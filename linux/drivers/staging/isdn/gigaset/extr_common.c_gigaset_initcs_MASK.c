#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inbuf_t {int dummy; } ;
struct gigaset_driver {int dummy; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct cardstate {int channels; int onechannel; int ignoreframes; int running; int gotfwver; int cidmode; TYPE_2__ timer; int /*<<< orphan*/  lock; scalar_t__ bcs; scalar_t__ cs_init; TYPE_1__* ops; scalar_t__ cmdbytes; scalar_t__ curlen; int /*<<< orphan*/  cmdlock; int /*<<< orphan*/ * lastcmdbuf; int /*<<< orphan*/  cmdbuf; scalar_t__ isdn_up; scalar_t__ connected; int /*<<< orphan*/  inbuf; scalar_t__ cbytes; scalar_t__ dle; int /*<<< orphan*/  at_state; int /*<<< orphan*/  mstate; int /*<<< orphan*/  mode; scalar_t__ waiting; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  tabcid; int /*<<< orphan*/  tabnocid; int /*<<< orphan*/ * tty_dev; int /*<<< orphan*/ * dev; scalar_t__ cur_at_seq; scalar_t__ commands_pending; int /*<<< orphan*/  port; int /*<<< orphan*/  event_tasklet; scalar_t__ ev_head; scalar_t__ ev_tail; int /*<<< orphan*/  ev_lock; int /*<<< orphan*/  temp_at_states; } ;
struct bc_state {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* initcshw ) (struct cardstate*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GIG_TICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MS_UNINITIALIZED ; 
 int /*<<< orphan*/  M_UNKNOWN ; 
 int /*<<< orphan*/  VALID_ID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct cardstate* FUNC2 (struct gigaset_driver*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cardstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cardstate*) ; 
 int /*<<< orphan*/  gigaset_handle_event ; 
 int /*<<< orphan*/  FUNC6 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct cardstate*) ; 
 int /*<<< orphan*/  FUNC8 (struct cardstate*) ; 
 scalar_t__ FUNC9 (scalar_t__,struct cardstate*,int) ; 
 scalar_t__ FUNC10 (struct cardstate*,char const*) ; 
 int /*<<< orphan*/  gigaset_tab_cid ; 
 int /*<<< orphan*/  gigaset_tab_nocid ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cardstate*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC20 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_tick ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

struct cardstate *FUNC24(struct gigaset_driver *drv, int channels,
				 int onechannel, int ignoreframes,
				 int cidmode, const char *modulename)
{
	struct cardstate *cs;
	unsigned long flags;
	int i;

	FUNC3(DEBUG_INIT, "allocating cs");
	cs = FUNC2(drv);
	if (!cs) {
		FUNC16("maximum number of devices exceeded\n");
		return NULL;
	}

	cs->cs_init = 0;
	cs->channels = channels;
	cs->onechannel = onechannel;
	cs->ignoreframes = ignoreframes;
	FUNC0(&cs->temp_at_states);
	cs->running = 0;
	FUNC22(&cs->timer, timer_tick, 0);
	FUNC17(&cs->ev_lock);
	cs->ev_tail = 0;
	cs->ev_head = 0;

	FUNC21(&cs->event_tasklet, gigaset_handle_event,
		     (unsigned long) cs);
	FUNC23(&cs->port);
	cs->commands_pending = 0;
	cs->cur_at_seq = 0;
	cs->gotfwver = -1;
	cs->dev = NULL;
	cs->tty_dev = NULL;
	cs->cidmode = cidmode != 0;
	cs->tabnocid = gigaset_tab_nocid;
	cs->tabcid = gigaset_tab_cid;

	FUNC11(&cs->waitqueue);
	cs->waiting = 0;

	cs->mode = M_UNKNOWN;
	cs->mstate = MS_UNINITIALIZED;

	cs->bcs = FUNC13(channels, sizeof(struct bc_state), GFP_KERNEL);
	cs->inbuf = FUNC12(sizeof(struct inbuf_t), GFP_KERNEL);
	if (!cs->bcs || !cs->inbuf) {
		FUNC16("out of memory\n");
		goto error;
	}
	++cs->cs_init;

	FUNC3(DEBUG_INIT, "setting up at_state");
	FUNC17(&cs->lock);
	FUNC4(&cs->at_state, NULL, cs, 0);
	cs->dle = 0;
	cs->cbytes = 0;

	FUNC3(DEBUG_INIT, "setting up inbuf");
	FUNC7(cs->inbuf, cs);

	cs->connected = 0;
	cs->isdn_up = 0;

	FUNC3(DEBUG_INIT, "setting up cmdbuf");
	cs->cmdbuf = *(cs->lastcmdbuf = NULL);
	FUNC17(&cs->cmdlock);
	cs->curlen = 0;
	cs->cmdbytes = 0;

	FUNC3(DEBUG_INIT, "setting up iif");
	if (FUNC10(cs, modulename) < 0) {
		FUNC16("error registering ISDN device\n");
		goto error;
	}

	FUNC14(cs, VALID_ID);
	++cs->cs_init;
	FUNC3(DEBUG_INIT, "setting up hw");
	if (cs->ops->initcshw(cs) < 0)
		goto error;

	++cs->cs_init;

	/* set up character device */
	FUNC6(cs);

	/* set up device sysfs */
	FUNC8(cs);

	/* set up channel data structures */
	for (i = 0; i < channels; ++i) {
		FUNC3(DEBUG_INIT, "setting up bcs[%d]", i);
		if (FUNC9(cs->bcs + i, cs, i) < 0) {
			FUNC16("could not allocate channel %d data\n", i);
			goto error;
		}
	}

	FUNC18(&cs->lock, flags);
	cs->running = 1;
	FUNC19(&cs->lock, flags);
	cs->timer.expires = jiffies + FUNC15(GIG_TICK);
	FUNC1(&cs->timer);

	FUNC3(DEBUG_INIT, "cs initialized");
	return cs;

error:
	FUNC3(DEBUG_INIT, "failed");
	FUNC5(cs);
	return NULL;
}
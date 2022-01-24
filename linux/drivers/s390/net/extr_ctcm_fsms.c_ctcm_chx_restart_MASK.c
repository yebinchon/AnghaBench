#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct channel {int /*<<< orphan*/  timer; int /*<<< orphan*/  cdev; int /*<<< orphan*/  id; struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  fsm_instance ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int /*<<< orphan*/  CTCM_TIME_5_SEC ; 
 int /*<<< orphan*/  CTC_DBF_NOTICE ; 
 int CTC_EVENT_TIMER ; 
 int CTC_STATE_STARTWAIT ; 
 int EBUSY ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct channel*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC10(fsm_instance *fi, int event, void *arg)
{
	struct channel *ch = arg;
	struct net_device *dev = ch->netdev;
	unsigned long saveflags = 0;
	int oldstate;
	int rc;

	FUNC0(TRACE, CTC_DBF_NOTICE,
		"%s: %s[%d] of %s\n",
			CTCM_FUNTAIL, ch->id, event, dev->name);

	FUNC4(&ch->timer);

	FUNC3(&ch->timer, CTCM_TIME_5_SEC, CTC_EVENT_TIMER, ch);
	oldstate = FUNC5(fi);
	FUNC6(fi, CTC_STATE_STARTWAIT);
	if (event == CTC_EVENT_TIMER)	/* only for timer not yet locked */
		FUNC8(FUNC7(ch->cdev), saveflags);
			/* Such conditional locking is a known problem for
			 * sparse because its undeterministic in static view.
			 * Warnings should be ignored here. */
	rc = FUNC1(ch->cdev, 0);
	if (event == CTC_EVENT_TIMER)
		FUNC9(FUNC7(ch->cdev), saveflags);
	if (rc != 0) {
		if (rc != -EBUSY) {
		    FUNC4(&ch->timer);
		    FUNC6(fi, oldstate);
		}
		FUNC2(ch, rc, "HaltIO in ctcm_chx_restart");
	}
}
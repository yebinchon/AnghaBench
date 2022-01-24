#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uwb_rc_cmd_cb_f ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct uwb_rccb {int /*<<< orphan*/  bCommandContext; } ;
struct uwb_rc_neh {int /*<<< orphan*/  list_node; int /*<<< orphan*/  context; void* arg; int /*<<< orphan*/  cb; int /*<<< orphan*/  evt; int /*<<< orphan*/  evt_type; struct uwb_rc* rc; int /*<<< orphan*/  timer; int /*<<< orphan*/  kref; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {int /*<<< orphan*/  neh_lock; int /*<<< orphan*/  neh_list; TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct uwb_rc_neh* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct uwb_rc*,struct uwb_rc_neh*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rc_neh*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct uwb_rc_neh* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct uwb_rc_neh*) ; 
 int /*<<< orphan*/  uwb_rc_neh_timer ; 

struct uwb_rc_neh *FUNC13(struct uwb_rc *rc, struct uwb_rccb *cmd,
				  u8 expected_type, u16 expected_event,
				  uwb_rc_cmd_cb_f cb, void *arg)
{
	int result;
	unsigned long flags;
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_rc_neh *neh;

	neh = FUNC7(sizeof(*neh), GFP_KERNEL);
	if (neh == NULL) {
		result = -ENOMEM;
		goto error_kzalloc;
	}

	FUNC6(&neh->kref);
	FUNC1(&neh->list_node);
	FUNC11(&neh->timer, uwb_rc_neh_timer, 0);

	neh->rc = rc;
	neh->evt_type = expected_type;
	neh->evt = FUNC3(expected_event);
	neh->cb = cb;
	neh->arg = arg;

	FUNC9(&rc->neh_lock, flags);
	result = FUNC2(rc, neh);
	if (result >= 0) {
		cmd->bCommandContext = neh->context;
		FUNC8(&neh->list_node, &rc->neh_list);
		FUNC12(neh);
	}
	FUNC10(&rc->neh_lock, flags);
	if (result < 0)
		goto error_ctx_get;

	return neh;

error_ctx_get:
	FUNC5(neh);
error_kzalloc:
	FUNC4(dev, "cannot open handle to radio controller: %d\n", result);
	return FUNC0(result);
}
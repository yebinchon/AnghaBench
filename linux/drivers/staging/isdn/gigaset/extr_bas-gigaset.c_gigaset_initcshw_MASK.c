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
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {TYPE_1__ hw; } ;
struct bas_cardstate {int /*<<< orphan*/  int_in_wq; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  timer_int_in; int /*<<< orphan*/  timer_cmd_in; int /*<<< orphan*/  timer_atrdy; int /*<<< orphan*/  timer_ctrl; struct cardstate* cs; int /*<<< orphan*/  lock; int /*<<< orphan*/  int_in_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP_MSGSIZE ; 
 int /*<<< orphan*/  atrdy_timeout ; 
 int /*<<< orphan*/  cmd_in_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  int_in_resubmit ; 
 int /*<<< orphan*/  int_in_work ; 
 int /*<<< orphan*/  FUNC2 (struct bas_cardstate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bas_cardstate* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  req_timeout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct cardstate *cs)
{
	struct bas_cardstate *ucs;

	cs->hw.bas = ucs = FUNC4(sizeof(*ucs), GFP_KERNEL);
	if (!ucs) {
		FUNC5("out of memory\n");
		return -ENOMEM;
	}
	ucs->int_in_buf = FUNC3(IP_MSGSIZE, GFP_KERNEL);
	if (!ucs->int_in_buf) {
		FUNC2(ucs);
		FUNC5("out of memory\n");
		return -ENOMEM;
	}

	FUNC6(&ucs->lock);
	ucs->cs = cs;
	FUNC7(&ucs->timer_ctrl, req_timeout, 0);
	FUNC7(&ucs->timer_atrdy, atrdy_timeout, 0);
	FUNC7(&ucs->timer_cmd_in, cmd_in_timeout, 0);
	FUNC7(&ucs->timer_int_in, int_in_resubmit, 0);
	FUNC1(&ucs->waitqueue);
	FUNC0(&ucs->int_in_wq, int_in_work);

	return 0;
}
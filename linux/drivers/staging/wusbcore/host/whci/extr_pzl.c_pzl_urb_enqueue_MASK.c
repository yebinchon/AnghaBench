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
struct whc_qset {int /*<<< orphan*/  remove; int /*<<< orphan*/  in_sw_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  usb_hcd; } ;
struct whc {int /*<<< orphan*/  periodic_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  lock; TYPE_1__ wusbhc; } ;
struct urb {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct whc_qset* FUNC0 (struct whc*,struct urb*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct whc*,struct whc_qset*,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct whc*,struct whc_qset*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct urb*) ; 

int FUNC8(struct whc *whc, struct urb *urb, gfp_t mem_flags)
{
	struct whc_qset *qset;
	int err;
	unsigned long flags;

	FUNC4(&whc->lock, flags);

	err = FUNC6(&whc->wusbhc.usb_hcd, urb);
	if (err < 0) {
		FUNC5(&whc->lock, flags);
		return err;
	}

	qset = FUNC0(whc, urb, GFP_ATOMIC);
	if (qset == NULL)
		err = -ENOMEM;
	else
		err = FUNC1(whc, qset, urb, GFP_ATOMIC);
	if (!err) {
		if (!qset->in_sw_list && !qset->remove)
			FUNC2(whc, qset);
	} else
		FUNC7(&whc->wusbhc.usb_hcd, urb);

	FUNC5(&whc->lock, flags);

	if (!err)
		FUNC3(whc->workqueue, &whc->periodic_work);

	return err;
}
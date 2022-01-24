#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_otg {int default_a; TYPE_3__* gadget; TYPE_2__* host; } ;
struct otg_fsm {int id; scalar_t__ a_conn; scalar_t__ b_conn; } ;
struct TYPE_5__ {struct usb_otg* otg; } ;
struct fsl_otg {int /*<<< orphan*/  otg_event; TYPE_1__ phy; struct otg_fsm fsm; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_8__ {int /*<<< orphan*/  otgsc; } ;
struct TYPE_7__ {int is_a_peripheral; } ;
struct TYPE_6__ {int is_b_host; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int OTGSC_INTSTS_MASK ; 
 int OTGSC_INTSTS_USB_ID ; 
 int OTGSC_STS_USB_ID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct otg_fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct otg_fsm*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct otg_fsm*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 TYPE_4__* usb_dr_regs ; 

irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct otg_fsm *fsm = &((struct fsl_otg *)dev_id)->fsm;
	struct usb_otg *otg = ((struct fsl_otg *)dev_id)->phy.otg;
	u32 otg_int_src, otg_sc;

	otg_sc = FUNC4(&usb_dr_regs->otgsc);
	otg_int_src = otg_sc & OTGSC_INTSTS_MASK & (otg_sc >> 8);

	/* Only clear otg interrupts */
	FUNC5(otg_sc, &usb_dr_regs->otgsc);

	/*FIXME: ID change not generate when init to 0 */
	fsm->id = (otg_sc & OTGSC_STS_USB_ID) ? 1 : 0;
	otg->default_a = (fsm->id == 0);

	/* process OTG interrupts */
	if (otg_int_src) {
		if (otg_int_src & OTGSC_INTSTS_USB_ID) {
			fsm->id = (otg_sc & OTGSC_STS_USB_ID) ? 1 : 0;
			otg->default_a = (fsm->id == 0);
			/* clear conn information */
			if (fsm->id)
				fsm->b_conn = 0;
			else
				fsm->a_conn = 0;

			if (otg->host)
				otg->host->is_b_host = fsm->id;
			if (otg->gadget)
				otg->gadget->is_a_peripheral = !fsm->id;
			FUNC0("ID int (ID is %d)\n", fsm->id);

			if (fsm->id) {	/* switch to gadget */
				FUNC7(
					&((struct fsl_otg *)dev_id)->otg_event,
					100);
			} else {	/* switch to host */
				FUNC1(&
						    ((struct fsl_otg *)dev_id)->
						    otg_event);
				FUNC2(fsm, 0);
				FUNC6(fsm, 1);
				FUNC3(fsm, 1);
			}
			return IRQ_HANDLED;
		}
	}
	return IRQ_NONE;
}
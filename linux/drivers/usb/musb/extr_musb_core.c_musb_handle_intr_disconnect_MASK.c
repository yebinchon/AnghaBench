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
typedef  int /*<<< orphan*/  u8 ;
struct musb {TYPE_4__* xceiv; TYPE_2__* hcd; int /*<<< orphan*/  a_wait_bcon; } ;
struct TYPE_8__ {TYPE_3__* otg; } ;
struct TYPE_7__ {int state; } ;
struct TYPE_5__ {int /*<<< orphan*/  is_b_host; } ;
struct TYPE_6__ {TYPE_1__ self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
#define  OTG_STATE_A_HOST 134 
#define  OTG_STATE_A_PERIPHERAL 133 
#define  OTG_STATE_A_SUSPEND 132 
#define  OTG_STATE_B_HOST 131 
#define  OTG_STATE_B_IDLE 130 
#define  OTG_STATE_B_PERIPHERAL 129 
#define  OTG_STATE_B_WAIT_ACON 128 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct musb*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct musb*) ; 
 int /*<<< orphan*/  FUNC6 (struct musb*) ; 
 int /*<<< orphan*/  FUNC7 (struct musb*) ; 
 int /*<<< orphan*/  FUNC8 (struct musb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct musb*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct musb *musb, u8 devctl)
{
	FUNC4(musb, "DISCONNECT (%s) as %s, devctl %02x",
			FUNC10(musb->xceiv->otg->state),
			FUNC1(musb), devctl);

	switch (musb->xceiv->otg->state) {
	case OTG_STATE_A_HOST:
	case OTG_STATE_A_SUSPEND:
		FUNC7(musb);
		FUNC9(musb);
		if (musb->a_wait_bcon != 0)
			FUNC8(musb, jiffies
				+ FUNC3(musb->a_wait_bcon));
		break;
	case OTG_STATE_B_HOST:
		/* REVISIT this behaves for "real disconnect"
		 * cases; make sure the other transitions from
		 * from B_HOST act right too.  The B_HOST code
		 * in hnp_stop() is currently not used...
		 */
		FUNC9(musb);
		if (musb->hcd)
			musb->hcd->self.is_b_host = 0;
		musb->xceiv->otg->state = OTG_STATE_B_PERIPHERAL;
		FUNC0(musb);
		FUNC5(musb);
		break;
	case OTG_STATE_A_PERIPHERAL:
		FUNC6(musb);
		FUNC9(musb);
		/* FALLTHROUGH */
	case OTG_STATE_B_WAIT_ACON:
		/* FALLTHROUGH */
	case OTG_STATE_B_PERIPHERAL:
	case OTG_STATE_B_IDLE:
		FUNC5(musb);
		break;
	default:
		FUNC2("unhandled DISCONNECT transition (%s)\n",
			FUNC10(musb->xceiv->otg->state));
		break;
	}
}
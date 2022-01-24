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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int type_control; int type_iso; int type_bulk; int type_int; int dir_in; int dir_out; } ;
struct TYPE_8__ {TYPE_3__ caps; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; int /*<<< orphan*/  ep_list; } ;
struct dwc2_hsotg_ep {int dir_in; int index; TYPE_4__ ep; int /*<<< orphan*/  name; struct dwc2_hsotg* parent; int /*<<< orphan*/  queue; } ;
struct TYPE_6__ {scalar_t__ speed; } ;
struct TYPE_5__ {int /*<<< orphan*/  ep_list; } ;
struct dwc2_hsotg {TYPE_2__ params; TYPE_1__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DWC2_SPEED_PARAM_LOW ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EP0_MPS_LIMIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dwc2_hsotg_ep_ops ; 
 int /*<<< orphan*/  FUNC4 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 scalar_t__ FUNC8 (struct dwc2_hsotg*) ; 

__attribute__((used)) static void FUNC9(struct dwc2_hsotg *hsotg,
			      struct dwc2_hsotg_ep *hs_ep,
				       int epnum,
				       bool dir_in)
{
	char *dir;

	if (epnum == 0)
		dir = "";
	else if (dir_in)
		dir = "in";
	else
		dir = "out";

	hs_ep->dir_in = dir_in;
	hs_ep->index = epnum;

	FUNC6(hs_ep->name, sizeof(hs_ep->name), "ep%d%s", epnum, dir);

	FUNC3(&hs_ep->queue);
	FUNC3(&hs_ep->ep.ep_list);

	/* add to the list of endpoints known by the gadget driver */
	if (epnum)
		FUNC5(&hs_ep->ep.ep_list, &hsotg->gadget.ep_list);

	hs_ep->parent = hsotg;
	hs_ep->ep.name = hs_ep->name;

	if (hsotg->params.speed == DWC2_SPEED_PARAM_LOW)
		FUNC7(&hs_ep->ep, 8);
	else
		FUNC7(&hs_ep->ep,
					   epnum ? 1024 : EP0_MPS_LIMIT);
	hs_ep->ep.ops = &dwc2_hsotg_ep_ops;

	if (epnum == 0) {
		hs_ep->ep.caps.type_control = true;
	} else {
		if (hsotg->params.speed != DWC2_SPEED_PARAM_LOW) {
			hs_ep->ep.caps.type_iso = true;
			hs_ep->ep.caps.type_bulk = true;
		}
		hs_ep->ep.caps.type_int = true;
	}

	if (dir_in)
		hs_ep->ep.caps.dir_in = true;
	else
		hs_ep->ep.caps.dir_out = true;

	/*
	 * if we're using dma, we need to set the next-endpoint pointer
	 * to be something valid.
	 */

	if (FUNC8(hsotg)) {
		u32 next = FUNC2((epnum + 1) % 15);

		if (dir_in)
			FUNC4(hsotg, next, FUNC0(epnum));
		else
			FUNC4(hsotg, next, FUNC1(epnum));
	}
}
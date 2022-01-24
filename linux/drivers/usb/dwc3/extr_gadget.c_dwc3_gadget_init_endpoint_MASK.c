#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_3__ {int dir_in; int dir_out; } ;
struct TYPE_4__ {TYPE_1__ caps; int /*<<< orphan*/ * comp_desc; int /*<<< orphan*/ * desc; int /*<<< orphan*/  name; } ;
struct dwc3_ep {int number; int direction; int /*<<< orphan*/  cancelled_list; int /*<<< orphan*/  started_list; int /*<<< orphan*/  pending_list; TYPE_2__ endpoint; int /*<<< orphan*/  name; scalar_t__ start_cmd_status; scalar_t__ combo_num; scalar_t__ regs; struct dwc3* dwc; } ;
struct dwc3 {struct dwc3_ep** eps; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dwc3_gadget_ep0_desc ; 
 int FUNC2 (struct dwc3_ep*) ; 
 int FUNC3 (struct dwc3_ep*) ; 
 int FUNC4 (struct dwc3_ep*) ; 
 struct dwc3_ep* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,char*,int,char*) ; 

__attribute__((used)) static int FUNC7(struct dwc3 *dwc, u8 epnum)
{
	struct dwc3_ep			*dep;
	bool				direction = epnum & 1;
	int				ret;
	u8				num = epnum >> 1;

	dep = FUNC5(sizeof(*dep), GFP_KERNEL);
	if (!dep)
		return -ENOMEM;

	dep->dwc = dwc;
	dep->number = epnum;
	dep->direction = direction;
	dep->regs = dwc->regs + FUNC0(epnum);
	dwc->eps[epnum] = dep;
	dep->combo_num = 0;
	dep->start_cmd_status = 0;

	FUNC6(dep->name, sizeof(dep->name), "ep%u%s", num,
			direction ? "in" : "out");

	dep->endpoint.name = dep->name;

	if (!(dep->number > 1)) {
		dep->endpoint.desc = &dwc3_gadget_ep0_desc;
		dep->endpoint.comp_desc = NULL;
	}

	if (num == 0)
		ret = FUNC2(dep);
	else if (direction)
		ret = FUNC3(dep);
	else
		ret = FUNC4(dep);

	if (ret)
		return ret;

	dep->endpoint.caps.dir_in = direction;
	dep->endpoint.caps.dir_out = !direction;

	FUNC1(&dep->pending_list);
	FUNC1(&dep->started_list);
	FUNC1(&dep->cancelled_list);

	return 0;
}
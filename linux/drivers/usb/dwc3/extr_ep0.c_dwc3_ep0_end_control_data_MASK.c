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
typedef  int /*<<< orphan*/  u32 ;
struct dwc3_gadget_ep_cmd_params {int dummy; } ;
struct dwc3_ep {scalar_t__ resource_index; } ;
struct dwc3 {int dummy; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DEPCMD_CMDIOC ; 
 int /*<<< orphan*/  DWC3_DEPCMD_ENDTRANSFER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct dwc3_ep*,int /*<<< orphan*/ ,struct dwc3_gadget_ep_cmd_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3_gadget_ep_cmd_params*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dwc3 *dwc, struct dwc3_ep *dep)
{
	struct dwc3_gadget_ep_cmd_params params;
	u32			cmd;
	int			ret;

	if (!dep->resource_index)
		return;

	cmd = DWC3_DEPCMD_ENDTRANSFER;
	cmd |= DWC3_DEPCMD_CMDIOC;
	cmd |= FUNC0(dep->resource_index);
	FUNC3(&params, 0, sizeof(params));
	ret = FUNC2(dep, cmd, &params);
	FUNC1(ret);
	dep->resource_index = 0;
}
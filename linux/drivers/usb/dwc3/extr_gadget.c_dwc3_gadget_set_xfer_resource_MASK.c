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
struct dwc3_gadget_ep_cmd_params {int /*<<< orphan*/  param0; } ;
struct dwc3_ep {int dummy; } ;
typedef  int /*<<< orphan*/  params ;

/* Variables and functions */
 int /*<<< orphan*/  DWC3_DEPCMD_SETTRANSFRESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dwc3_ep*,int /*<<< orphan*/ ,struct dwc3_gadget_ep_cmd_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3_gadget_ep_cmd_params*,int,int) ; 

__attribute__((used)) static int FUNC3(struct dwc3_ep *dep)
{
	struct dwc3_gadget_ep_cmd_params params;

	FUNC2(&params, 0x00, sizeof(params));

	params.param0 = FUNC0(1);

	return FUNC1(dep, DWC3_DEPCMD_SETTRANSFRESOURCE,
			&params);
}
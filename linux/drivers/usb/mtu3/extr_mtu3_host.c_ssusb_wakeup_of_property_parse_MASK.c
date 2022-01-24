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
struct ssusb_mtk {int /*<<< orphan*/  uwk; int /*<<< orphan*/  uwk_vers; int /*<<< orphan*/  uwk_reg_base; int /*<<< orphan*/  dev; int /*<<< orphan*/  uwk_en; } ;
struct of_phandle_args {int /*<<< orphan*/  np; int /*<<< orphan*/ * args; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device_node*,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ssusb_mtk *ssusb,
				struct device_node *dn)
{
	struct of_phandle_args args;
	int ret;

	/* wakeup function is optional */
	ssusb->uwk_en = FUNC4(dn, "wakeup-source");
	if (!ssusb->uwk_en)
		return 0;

	ret = FUNC3(dn,
				"mediatek,syscon-wakeup", 2, 0, &args);
	if (ret)
		return ret;

	ssusb->uwk_reg_base = args.args[0];
	ssusb->uwk_vers = args.args[1];
	ssusb->uwk = FUNC5(args.np);
	FUNC2(args.np);
	FUNC1(ssusb->dev, "uwk - reg:0x%x, version:%d\n",
			ssusb->uwk_reg_base, ssusb->uwk_vers);

	return FUNC0(ssusb->uwk);
}
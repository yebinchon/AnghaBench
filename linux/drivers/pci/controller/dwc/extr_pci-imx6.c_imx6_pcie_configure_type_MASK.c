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
struct imx6_pcie {int controller_id; int /*<<< orphan*/  iomuxc_gpr; TYPE_1__* drvdata; } ;
struct TYPE_2__ {scalar_t__ variant; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int IMX6Q_GPR12_DEVICE_TYPE ; 
 scalar_t__ IMX8MQ ; 
 unsigned int IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE ; 
 int /*<<< orphan*/  IOMUXC_GPR12 ; 
 int /*<<< orphan*/  PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct imx6_pcie *imx6_pcie)
{
	unsigned int mask, val;

	if (imx6_pcie->drvdata->variant == IMX8MQ &&
	    imx6_pcie->controller_id == 1) {
		mask   = IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE;
		val    = FUNC0(IMX8MQ_GPR12_PCIE2_CTRL_DEVICE_TYPE,
				    PCI_EXP_TYPE_ROOT_PORT);
	} else {
		mask = IMX6Q_GPR12_DEVICE_TYPE;
		val  = FUNC0(IMX6Q_GPR12_DEVICE_TYPE,
				  PCI_EXP_TYPE_ROOT_PORT);
	}

	FUNC1(imx6_pcie->iomuxc_gpr, IOMUXC_GPR12, mask, val);
}
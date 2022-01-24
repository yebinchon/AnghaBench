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
struct platform_device {int dummy; } ;
struct imx6_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx6_pcie*) ; 
 struct imx6_pcie* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct imx6_pcie *imx6_pcie = FUNC1(pdev);

	/* bring down link, so bootloader gets clean state in case of reboot */
	FUNC0(imx6_pcie);
}
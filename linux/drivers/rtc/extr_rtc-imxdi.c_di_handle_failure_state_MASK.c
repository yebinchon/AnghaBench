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
typedef  int u32 ;
struct imxdi_dev {scalar_t__ ioaddr; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DCR ; 
 int DCR_FSHL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct imxdi_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct imxdi_dev*,char*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct imxdi_dev *imxdi, u32 dsr)
{
	u32 dcr;

	FUNC0(&imxdi->pdev->dev, "DSR register reports: %08X\n", dsr);

	/* report the cause */
	FUNC1(imxdi, dsr);

	dcr = FUNC3(imxdi->ioaddr + DCR);

	if (dcr & DCR_FSHL) {
		/* we are out of luck */
		FUNC2(imxdi, "battery");
		return -ENODEV;
	}
	/*
	 * with the next SYSTEM POR we will transit from the "FAILURE STATE"
	 * into the "NON-VALID STATE" + "FAILURE STATE"
	 */
	FUNC2(imxdi, "main");

	return -ENODEV;
}
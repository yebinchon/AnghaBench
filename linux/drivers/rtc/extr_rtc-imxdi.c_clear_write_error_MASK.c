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
struct imxdi_dev {TYPE_1__* pdev; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DSR ; 
 int DSR_WEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct imxdi_dev *imxdi)
{
	int cnt;

	FUNC1(&imxdi->pdev->dev, "WARNING: Register write error!\n");

	/* clear the write error flag */
	FUNC4(DSR_WEF, imxdi->ioaddr + DSR);

	/* wait for it to take effect */
	for (cnt = 0; cnt < 1000; cnt++) {
		if ((FUNC2(imxdi->ioaddr + DSR) & DSR_WEF) == 0)
			return;
		FUNC3(10);
	}
	FUNC0(&imxdi->pdev->dev,
			"ERROR: Cannot clear write-error flag!\n");
}
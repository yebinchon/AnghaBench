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
typedef  int /*<<< orphan*/  u32 ;
struct imxdi_dev {int dsr; int /*<<< orphan*/  write_mutex; TYPE_1__* pdev; int /*<<< orphan*/  write_wait; scalar_t__ ioaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIER_WCIE ; 
 int DSR_WCF ; 
 int DSR_WEF ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct imxdi_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct imxdi_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct imxdi_dev *imxdi, u32 val, int reg)
{
	int ret;
	int rc = 0;

	/* serialize register writes */
	FUNC4(&imxdi->write_mutex);

	/* enable the write-complete interrupt */
	FUNC2(imxdi, DIER_WCIE);

	imxdi->dsr = 0;

	/* do the register write */
	FUNC7(val, imxdi->ioaddr + reg);

	/* wait for the write to finish */
	ret = FUNC6(imxdi->write_wait,
			imxdi->dsr & (DSR_WCF | DSR_WEF), FUNC3(1));
	if (ret < 0) {
		rc = ret;
		goto out;
	} else if (ret == 0) {
		FUNC1(&imxdi->pdev->dev,
				"Write-wait timeout "
				"val = 0x%08x reg = 0x%08x\n", val, reg);
	}

	/* check for write error */
	if (imxdi->dsr & DSR_WEF) {
		FUNC0(imxdi);
		rc = -EIO;
	}

out:
	FUNC5(&imxdi->write_mutex);

	return rc;
}
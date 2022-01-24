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
struct s3fwrn5_i2c_phy {int mode; int /*<<< orphan*/  mutex; scalar_t__ irq_skip; int /*<<< orphan*/  ndev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
#define  S3FWRN5_MODE_COLD 130 
#define  S3FWRN5_MODE_FW 129 
#define  S3FWRN5_MODE_NCI 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct s3fwrn5_i2c_phy*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *phy_id)
{
	struct s3fwrn5_i2c_phy *phy = phy_id;
	int ret = 0;

	if (!phy || !phy->ndev) {
		FUNC0(1);
		return IRQ_NONE;
	}

	FUNC1(&phy->mutex);

	if (phy->irq_skip)
		goto out;

	switch (phy->mode) {
	case S3FWRN5_MODE_NCI:
	case S3FWRN5_MODE_FW:
		ret = FUNC3(phy);
		break;
	case S3FWRN5_MODE_COLD:
		ret = -EREMOTEIO;
		break;
	}

out:
	FUNC2(&phy->mutex);

	return IRQ_HANDLED;
}
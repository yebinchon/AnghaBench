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
struct s3fwrn5_i2c_phy {int mode; int irq_skip; int /*<<< orphan*/  mutex; int /*<<< orphan*/  gpio_en; int /*<<< orphan*/  gpio_fw_wake; } ;
typedef  enum s3fwrn5_mode { ____Placeholder_s3fwrn5_mode } s3fwrn5_mode ;

/* Variables and functions */
 int S3FWRN5_EN_WAIT_TIME ; 
 int S3FWRN5_MODE_COLD ; 
 int S3FWRN5_MODE_FW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *phy_id, enum s3fwrn5_mode mode)
{
	struct s3fwrn5_i2c_phy *phy = phy_id;

	FUNC2(&phy->mutex);

	if (phy->mode == mode)
		goto out;

	phy->mode = mode;

	FUNC0(phy->gpio_en, 1);
	FUNC0(phy->gpio_fw_wake, 0);
	if (mode == S3FWRN5_MODE_FW)
		FUNC0(phy->gpio_fw_wake, 1);

	if (mode != S3FWRN5_MODE_COLD) {
		FUNC1(S3FWRN5_EN_WAIT_TIME);
		FUNC0(phy->gpio_en, 0);
		FUNC1(S3FWRN5_EN_WAIT_TIME/2);
	}

	phy->irq_skip = true;

out:
	FUNC3(&phy->mutex);
}
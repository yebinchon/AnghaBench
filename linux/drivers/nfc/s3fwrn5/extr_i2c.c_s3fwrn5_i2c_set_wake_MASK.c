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
struct s3fwrn5_i2c_phy {int /*<<< orphan*/  mutex; int /*<<< orphan*/  gpio_fw_wake; } ;

/* Variables and functions */
 int S3FWRN5_EN_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *phy_id, bool wake)
{
	struct s3fwrn5_i2c_phy *phy = phy_id;

	FUNC2(&phy->mutex);
	FUNC0(phy->gpio_fw_wake, wake);
	FUNC1(S3FWRN5_EN_WAIT_TIME/2);
	FUNC3(&phy->mutex);
}
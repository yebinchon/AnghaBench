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
struct s3fwrn5_i2c_phy {int mode; int /*<<< orphan*/  mutex; } ;
typedef  enum s3fwrn5_mode { ____Placeholder_s3fwrn5_mode } s3fwrn5_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum s3fwrn5_mode FUNC2(void *phy_id)
{
	struct s3fwrn5_i2c_phy *phy = phy_id;
	enum s3fwrn5_mode mode;

	FUNC0(&phy->mutex);

	mode = phy->mode;

	FUNC1(&phy->mutex);

	return mode;
}
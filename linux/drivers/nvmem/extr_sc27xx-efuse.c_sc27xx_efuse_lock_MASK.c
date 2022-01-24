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
struct sc27xx_efuse {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  hwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC27XX_EFUSE_HWLOCK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct sc27xx_efuse *efuse)
{
	int ret;

	FUNC2(&efuse->mutex);

	ret = FUNC1(efuse->hwlock,
				      SC27XX_EFUSE_HWLOCK_TIMEOUT);
	if (ret) {
		FUNC0(efuse->dev, "timeout to get the hwspinlock\n");
		FUNC3(&efuse->mutex);
		return ret;
	}

	return 0;
}
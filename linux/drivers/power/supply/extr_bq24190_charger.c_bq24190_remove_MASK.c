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
struct i2c_client {int dummy; } ;
struct bq24190_dev_info {int /*<<< orphan*/  dev; scalar_t__ charger; scalar_t__ battery; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bq24190_dev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct bq24190_dev_info* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client)
{
	struct bq24190_dev_info *bdi = FUNC2(client);
	int error;

	error = FUNC5(bdi->dev);
	if (error < 0) {
		FUNC1(bdi->dev, "pm_runtime_get failed: %i\n", error);
		FUNC6(bdi->dev);
	}

	FUNC0(bdi);
	if (bdi->battery)
		FUNC8(bdi->battery);
	FUNC8(bdi->charger);
	if (error >= 0)
		FUNC7(bdi->dev);
	FUNC4(bdi->dev);
	FUNC3(bdi->dev);

	return 0;
}
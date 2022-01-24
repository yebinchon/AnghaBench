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
struct bq24257_device {int /*<<< orphan*/  iilimit_setup_work; scalar_t__ iilimit_autoset_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bq24257_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bq24257_device* FUNC2 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct bq24257_device *bq = FUNC2(client);

	if (bq->iilimit_autoset_enable)
		FUNC1(&bq->iilimit_setup_work);

	FUNC0(bq, F_RESET, 1); /* reset to defaults */

	return 0;
}
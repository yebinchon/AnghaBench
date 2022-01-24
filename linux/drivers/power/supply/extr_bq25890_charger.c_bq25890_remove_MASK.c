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
struct bq25890_device {int /*<<< orphan*/  usb_nb; int /*<<< orphan*/  usb_phy; int /*<<< orphan*/  charger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bq25890_device*) ; 
 struct bq25890_device* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct bq25890_device *bq = FUNC2(client);

	FUNC3(bq->charger);

	if (!FUNC0(bq->usb_phy))
		FUNC4(bq->usb_phy, &bq->usb_nb);

	/* reset all registers to default values */
	FUNC1(bq);

	return 0;
}
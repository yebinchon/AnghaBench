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
typedef  int uint8_t ;
struct max14656_chip {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CONTROL1_DEFAULT ; 
 int CONTROL1_EDGE ; 
 int CONTROL1_INT_ACTIVE_HIGH ; 
 int CONTROL1_INT_EN ; 
 int CONTROL2_ADC_EN ; 
 int DEVICE_REV_MASK ; 
 int DEVICE_VENDOR_MASK ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  MAX14656_CONTROL_1 ; 
 int /*<<< orphan*/  MAX14656_CONTROL_2 ; 
 int /*<<< orphan*/  MAX14656_DEVICE_ID ; 
 int /*<<< orphan*/  MAX14656_INTMASK_1 ; 
 int /*<<< orphan*/  MAX14656_INTMASK_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct max14656_chip *chip)
{
	uint8_t val = 0;
	uint8_t rev;
	struct i2c_client *client = chip->client;

	if (FUNC2(client, MAX14656_DEVICE_ID, &val))
		return -ENODEV;

	if ((val & DEVICE_VENDOR_MASK) != 0x20) {
		FUNC0(&client->dev, "wrong vendor ID %d\n",
			((val & DEVICE_VENDOR_MASK) >> 4));
		return -ENODEV;
	}
	rev = val & DEVICE_REV_MASK;

	/* Turn on ADC_EN */
	if (FUNC3(client, MAX14656_CONTROL_2, CONTROL2_ADC_EN))
		return -EINVAL;

	/* turn on interrupts and low power mode */
	if (FUNC3(client, MAX14656_CONTROL_1,
		CONTROL1_DEFAULT |
		CONTROL1_INT_EN |
		CONTROL1_INT_ACTIVE_HIGH |
		CONTROL1_EDGE))
		return -EINVAL;

	if (FUNC3(client, MAX14656_INTMASK_1, 0x3))
		return -EINVAL;

	if (FUNC3(client, MAX14656_INTMASK_2, 0x1))
		return -EINVAL;

	FUNC1(&client->dev, "detected revision %d\n", rev);
	return 0;
}
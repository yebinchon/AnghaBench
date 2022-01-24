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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct adp8870_bl {TYPE_1__* led; } ;
struct adp8870_backlight_platform_data {int num_leds; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct adp8870_backlight_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct adp8870_bl* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct adp8870_backlight_platform_data *pdata =
		FUNC1(&client->dev);
	struct adp8870_bl *data = FUNC2(client);
	int i;

	for (i = 0; i < pdata->num_leds; i++) {
		FUNC3(&data->led[i].cdev);
		FUNC0(&data->led[i].work);
	}

	return 0;
}
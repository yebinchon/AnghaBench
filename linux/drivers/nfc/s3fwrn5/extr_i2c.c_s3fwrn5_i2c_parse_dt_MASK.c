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
struct s3fwrn5_i2c_phy {void* gpio_fw_wake; void* gpio_en; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct s3fwrn5_i2c_phy* FUNC1 (struct i2c_client*) ; 
 void* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct s3fwrn5_i2c_phy *phy = FUNC1(client);
	struct device_node *np = client->dev.of_node;

	if (!np)
		return -ENODEV;

	phy->gpio_en = FUNC2(np, "s3fwrn5,en-gpios", 0);
	if (!FUNC0(phy->gpio_en))
		return -ENODEV;

	phy->gpio_fw_wake = FUNC2(np, "s3fwrn5,fw-gpios", 0);
	if (!FUNC0(phy->gpio_fw_wake))
		return -ENODEV;

	return 0;
}
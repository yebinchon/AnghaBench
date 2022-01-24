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
struct TYPE_2__ {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct ziirave_wdt_data {int /*<<< orphan*/  sysfs_mutex; TYPE_1__ bootloader_rev; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 char* ZIIRAVE_BL_VERSION_FMT ; 
 struct ziirave_wdt_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					   struct device_attribute *attr,
					   char *buf)
{
	struct i2c_client *client = FUNC4(dev->parent);
	struct ziirave_wdt_data *w_priv = FUNC0(client);
	int ret;

	ret = FUNC1(&w_priv->sysfs_mutex);
	if (ret)
		return ret;

	ret = FUNC3(buf, ZIIRAVE_BL_VERSION_FMT, w_priv->bootloader_rev.major,
		      w_priv->bootloader_rev.minor);

	FUNC2(&w_priv->sysfs_mutex);

	return ret;
}
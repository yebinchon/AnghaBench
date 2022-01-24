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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct brcm_usb_phy_data {int /*<<< orphan*/  ini; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * brcm_dual_mode_to_name ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct brcm_usb_phy_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  sysfs_lock ; 
 char* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				struct device_attribute *attr,
				char *buf)
{
	struct brcm_usb_phy_data *priv = FUNC2(dev);
	int value;

	FUNC3(&sysfs_lock);
	value = FUNC1(&priv->ini);
	FUNC4(&sysfs_lock);
	return FUNC5(buf, "%s\n",
		FUNC6(&brcm_dual_mode_to_name[0],
			      FUNC0(brcm_dual_mode_to_name),
			      value));
}
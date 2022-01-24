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
struct ds2781_device_info {int /*<<< orphan*/  w1_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ds2781_device_info *dev_info, int reg)
{
	int ret;

	ret = FUNC1(dev_info->w1_dev, reg);
	if (ret < 0)
		return ret;

	ret = FUNC0(dev_info->w1_dev, reg);
	if (ret < 0)
		return ret;

	return 0;
}
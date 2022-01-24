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
typedef  int /*<<< orphan*/  u8 ;
struct ds2781_device_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS2781_CONTROL ; 
 int FUNC0 (struct ds2781_device_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ds2781_device_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ds2781_device_info *dev_info,
	u8 control_reg)
{
	int ret;

	ret = FUNC1(dev_info, &control_reg,
				DS2781_CONTROL, sizeof(u8));
	if (ret < 0)
		return ret;

	return FUNC0(dev_info, DS2781_CONTROL);
}
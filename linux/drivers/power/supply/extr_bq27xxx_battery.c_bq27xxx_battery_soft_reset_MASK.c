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
struct bq27xxx_device_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct bq27xxx_device_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static inline int FUNC2(struct bq27xxx_device_info *di)
{
	int ret = FUNC0(di, false);
	if (ret < 0 && ret != -EINVAL)
		FUNC1(di->dev, "bus error on soft_reset: %d\n", ret);

	return ret;
}
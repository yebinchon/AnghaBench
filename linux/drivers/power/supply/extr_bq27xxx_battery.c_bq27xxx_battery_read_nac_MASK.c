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
struct bq27xxx_device_info {int opts; } ;

/* Variables and functions */
 int BQ27000_FLAG_CI ; 
 int BQ27XXX_O_ZERO ; 
 int /*<<< orphan*/  BQ27XXX_REG_FLAGS ; 
 int /*<<< orphan*/  BQ27XXX_REG_NAC ; 
 int ENODATA ; 
 int FUNC0 (struct bq27xxx_device_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bq27xxx_device_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct bq27xxx_device_info *di)
{
	int flags;

	if (di->opts & BQ27XXX_O_ZERO) {
		flags = FUNC1(di, BQ27XXX_REG_FLAGS, true);
		if (flags >= 0 && (flags & BQ27000_FLAG_CI))
			return -ENODATA;
	}

	return FUNC0(di, BQ27XXX_REG_NAC);
}
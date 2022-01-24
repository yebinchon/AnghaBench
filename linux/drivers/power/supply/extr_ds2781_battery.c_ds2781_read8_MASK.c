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
 int FUNC0 (struct ds2781_device_info*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct ds2781_device_info *dev_info, u8 *val,
	int addr)
{
	return FUNC0(dev_info, val, addr, sizeof(u8), 0);
}
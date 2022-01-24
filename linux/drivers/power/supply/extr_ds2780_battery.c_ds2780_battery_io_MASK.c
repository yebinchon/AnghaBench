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
struct ds2780_device_info {int /*<<< orphan*/  w1_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int,size_t,int) ; 

__attribute__((used)) static inline int FUNC1(struct ds2780_device_info *dev_info,
	char *buf, int addr, size_t count, int io)
{
	return FUNC0(dev_info->w1_dev, buf, addr, count, io);
}
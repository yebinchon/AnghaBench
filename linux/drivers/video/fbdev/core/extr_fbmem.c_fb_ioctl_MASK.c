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
struct file {int dummy; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 long ENODEV ; 
 long FUNC0 (struct fb_info*,unsigned int,unsigned long) ; 
 struct fb_info* FUNC1 (struct file*) ; 

__attribute__((used)) static long FUNC2(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct fb_info *info = FUNC1(file);

	if (!info)
		return -ENODEV;
	return FUNC0(info, cmd, arg);
}
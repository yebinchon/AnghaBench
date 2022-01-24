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
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct fb_info* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (struct fb_info*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct fb_info *fbi = FUNC0(dev);
	unsigned mode;
	int r;

	r = FUNC1(buf, 0, &mode);
	if (r)
		return r;

	r = FUNC2(fbi, mode);
	if (r)
		return r;

	return count;
}
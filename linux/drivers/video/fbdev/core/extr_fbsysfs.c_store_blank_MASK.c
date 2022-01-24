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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct fb_info* FUNC2 (struct device*) ; 
 int FUNC3 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,int) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *device,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct fb_info *fb_info = FUNC2(device);
	char *last = NULL;
	int err, arg;

	arg = FUNC5(buf, &last, 0);
	FUNC0();
	err = FUNC3(fb_info, arg);
	/* might again call into fb_blank */
	FUNC4(fb_info, arg);
	FUNC1();
	if (err < 0)
		return err;
	return count;
}
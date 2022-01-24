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
typedef  scalar_t__ u32 ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct fb_info* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 scalar_t__ FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *device,
			     struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct fb_info *fb_info = FUNC2(device);
	u32 state;
	char *last = NULL;

	state = FUNC5(buf, &last, 0);

	FUNC0();
	FUNC4(fb_info);

	FUNC3(fb_info, (int)state);

	FUNC6(fb_info);
	FUNC1();

	return count;
}
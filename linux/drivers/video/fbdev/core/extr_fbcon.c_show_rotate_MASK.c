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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int* con2fb_map ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct fb_info*) ; 
 size_t fg_console ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *device,
			   struct device_attribute *attr,char *buf)
{
	struct fb_info *info;
	int rotate = 0, idx;

	FUNC0();
	idx = con2fb_map[fg_console];

	if (idx == -1 || registered_fb[idx] == NULL)
		goto err;

	info = registered_fb[idx];
	rotate = FUNC2(info);
err:
	FUNC1();
	return FUNC3(buf, PAGE_SIZE, "%d\n", rotate);
}
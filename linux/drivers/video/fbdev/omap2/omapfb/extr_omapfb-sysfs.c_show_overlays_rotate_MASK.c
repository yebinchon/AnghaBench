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
struct omapfb_info {int num_overlays; int /*<<< orphan*/ * rotation; } ;
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct omapfb_info* FUNC0 (struct fb_info*) ; 
 int PAGE_SIZE ; 
 struct fb_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int FUNC3 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct fb_info *fbi = FUNC1(dev);
	struct omapfb_info *ofbi = FUNC0(fbi);
	ssize_t l = 0;
	int t;

	FUNC2(fbi);

	for (t = 0; t < ofbi->num_overlays; t++) {
		l += FUNC3(buf + l, PAGE_SIZE - l, "%s%d",
				t == 0 ? "" : ",", ofbi->rotation[t]);
	}

	l += FUNC3(buf + l, PAGE_SIZE - l, "\n");

	FUNC4(fbi);

	return l;
}
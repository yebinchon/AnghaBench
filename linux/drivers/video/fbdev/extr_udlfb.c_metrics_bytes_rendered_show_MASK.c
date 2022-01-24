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
struct fb_info {struct dlfb_data* par; } ;
struct dlfb_data {int /*<<< orphan*/  bytes_rendered; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *fbdev,
				   struct device_attribute *a, char *buf) {
	struct fb_info *fb_info = FUNC1(fbdev);
	struct dlfb_data *dlfb = fb_info->par;
	return FUNC2(buf, PAGE_SIZE, "%u\n",
			FUNC0(&dlfb->bytes_rendered));
}
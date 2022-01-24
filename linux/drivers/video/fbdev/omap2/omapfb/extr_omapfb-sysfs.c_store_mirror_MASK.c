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
struct omapfb_info {int mirror; int /*<<< orphan*/  region; } ;
struct fb_var_screeninfo {int dummy; } ;
struct fb_info {struct fb_var_screeninfo var; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  new_var ;

/* Variables and functions */
 struct omapfb_info* FUNC0 (struct fb_info*) ; 
 int FUNC1 (struct fb_info*,struct fb_var_screeninfo*) ; 
 struct fb_info* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_var_screeninfo*,struct fb_var_screeninfo*,int) ; 
 int FUNC5 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 
 int FUNC9 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
		struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct fb_info *fbi = FUNC2(dev);
	struct omapfb_info *ofbi = FUNC0(fbi);
	bool mirror;
	int r;
	struct fb_var_screeninfo new_var;

	r = FUNC9(buf, &mirror);
	if (r)
		return r;

	FUNC3(fbi);

	ofbi->mirror = mirror;

	FUNC6(ofbi->region);

	FUNC4(&new_var, &fbi->var, sizeof(new_var));
	r = FUNC1(fbi, &new_var);
	if (r)
		goto out;
	FUNC4(&fbi->var, &new_var, sizeof(fbi->var));

	FUNC8(fbi);

	r = FUNC5(fbi, 0);
	if (r)
		goto out;

	r = count;
out:
	FUNC7(ofbi->region);

	FUNC10(fbi);

	return r;
}
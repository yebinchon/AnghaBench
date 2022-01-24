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
struct w100fb_par {int fastpll_mode; } ;
struct fb_info {struct w100fb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct w100fb_par*) ; 
 struct fb_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct w100fb_par*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct fb_info *info = FUNC1(dev);
	struct w100fb_par *par=info->par;

	if (FUNC3(buf, NULL, 10) > 0) {
		par->fastpll_mode=1;
		FUNC2("w100fb: Using fast system clock (if possible)\n");
	} else {
		par->fastpll_mode=0;
		FUNC2("w100fb: Using normal system clock\n");
	}

	FUNC4(par);
	FUNC0(par);

	return count;
}
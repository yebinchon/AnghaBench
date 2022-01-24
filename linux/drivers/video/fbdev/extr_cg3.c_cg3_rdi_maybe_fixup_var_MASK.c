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
struct fb_var_screeninfo {int xres; int yres; int xres_virtual; int yres_virtual; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static void FUNC2(struct fb_var_screeninfo *var,
				    struct device_node *dp)
{
	const char *params;
	char *p;
	int ww, hh;

	params = FUNC0(dp, "params", NULL);
	if (params) {
		ww = FUNC1(params, &p, 10);
		if (ww && *p == 'x') {
			hh = FUNC1(p + 1, &p, 10);
			if (hh && *p == '-') {
				if (var->xres != ww ||
				    var->yres != hh) {
					var->xres = var->xres_virtual = ww;
					var->yres = var->yres_virtual = hh;
				}
			}
		}
	}
}
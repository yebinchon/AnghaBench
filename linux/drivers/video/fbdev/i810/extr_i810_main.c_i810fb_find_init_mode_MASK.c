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
struct i810fb_par {int ddc_num; int /*<<< orphan*/  edid; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int /*<<< orphan*/  bits_per_pixel; } ;
struct fb_monspecs {int /*<<< orphan*/ * modedb; int /*<<< orphan*/  modedb_len; } ;
struct fb_info {struct fb_var_screeninfo var; int /*<<< orphan*/  modelist; struct fb_monspecs monspecs; struct i810fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fb_monspecs*) ; 
 struct fb_videomode* FUNC3 (struct fb_monspecs*,int /*<<< orphan*/ *) ; 
 struct fb_videomode* FUNC4 (struct fb_var_screeninfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_var_screeninfo*,struct fb_info*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct fb_videomode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_var_screeninfo*,struct fb_videomode*) ; 
 int /*<<< orphan*/  FUNC8 (struct i810fb_par*) ; 
 int FUNC9 (struct fb_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_videomode*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ mode_option ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ xres ; 
 scalar_t__ yres ; 

__attribute__((used)) static void FUNC12(struct fb_info *info)
{
	struct fb_videomode mode;
	struct fb_var_screeninfo var;
	struct fb_monspecs *specs = &info->monspecs;
	int found = 0;
#ifdef CONFIG_FB_I810_I2C
	int i;
	int err = 1;
	struct i810fb_par *par = info->par;
#endif

	FUNC0(&info->modelist);
	FUNC10(&mode, 0, sizeof(struct fb_videomode));
	var = info->var;
#ifdef CONFIG_FB_I810_I2C
	i810_create_i2c_busses(par);

	for (i = 0; i < par->ddc_num + 1; i++) {
		err = i810_probe_i2c_connector(info, &par->edid, i);
		if (!err)
			break;
	}

	if (!err)
		printk("i810fb_init_pci: DDC probe successful\n");

	fb_edid_to_monspecs(par->edid, specs);

	if (specs->modedb == NULL)
		printk("i810fb_init_pci: Unable to get Mode Database\n");

	fb_videomode_to_modelist(specs->modedb, specs->modedb_len,
				 &info->modelist);
	if (specs->modedb != NULL) {
		const struct fb_videomode *m;

		if (xres && yres) {
			if ((m = fb_find_best_mode(&var, &info->modelist))) {
				mode = *m;
				found  = 1;
			}
		}

		if (!found) {
			m = fb_find_best_display(&info->monspecs, &info->modelist);
			mode = *m;
			found = 1;
		}

		fb_videomode_to_var(&var, &mode);
	}
#endif
	if (mode_option)
		FUNC5(&var, info, mode_option, specs->modedb,
			     specs->modedb_len, (found) ? &mode : NULL,
			     info->var.bits_per_pixel);

	info->var = var;
	FUNC1(specs->modedb);
	specs->modedb = NULL;
}
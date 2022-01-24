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
struct mmpfb_info {int /*<<< orphan*/  path; int /*<<< orphan*/  mode; int /*<<< orphan*/  output_fmt; int /*<<< orphan*/  dev; struct fb_info* fb_info; } ;
struct mmp_mode {int /*<<< orphan*/  pix_fmt_out; } ;
struct fb_videomode {int dummy; } ;
struct fb_info {int /*<<< orphan*/  var; int /*<<< orphan*/  modelist; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_videomode*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fb_videomode* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_videomode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct fb_videomode*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct mmp_mode**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mmp_mode*) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_videomode*,struct mmp_mode*) ; 

__attribute__((used)) static int FUNC9(struct mmpfb_info *fbi)
{
	struct fb_videomode *videomodes;
	struct mmp_mode *mmp_modes;
	struct fb_info *info = fbi->fb_info;
	int videomode_num, i;

	/* get videomodes from path */
	videomode_num = FUNC6(fbi->path, &mmp_modes);
	if (!videomode_num) {
		FUNC0(fbi->dev, "can't get videomode num\n");
		return 0;
	}
	/* put videomode list to info structure */
	videomodes = FUNC3(videomode_num, sizeof(struct fb_videomode),
			     GFP_KERNEL);
	if (!videomodes)
		return -ENOMEM;

	for (i = 0; i < videomode_num; i++)
		FUNC8(&videomodes[i], &mmp_modes[i]);
	FUNC1(videomodes, videomode_num, &info->modelist);

	/* set videomode[0] as default mode */
	FUNC5(&fbi->mode, &videomodes[0], sizeof(struct fb_videomode));
	fbi->output_fmt = mmp_modes[0].pix_fmt_out;
	FUNC2(&info->var, &fbi->mode);
	FUNC7(fbi->path, &mmp_modes[0]);

	FUNC4(videomodes);
	return videomode_num;
}
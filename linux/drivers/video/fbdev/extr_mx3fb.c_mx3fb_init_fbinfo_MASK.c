#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mx3fb_info {int /*<<< orphan*/  mutex; int /*<<< orphan*/  pseudo_palette; scalar_t__ cur_ipu_buf; int /*<<< orphan*/  cookie; } ;
struct fb_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  activate; } ;
struct fb_info {int /*<<< orphan*/  cmap; int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/  flags; struct fb_ops* fbops; TYPE_1__ var; struct mx3fb_info* par; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FBINFO_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FB_ACTIVATE_NOW ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC1 (int,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fb_info *FUNC4(struct device *dev, struct fb_ops *ops)
{
	struct fb_info *fbi;
	struct mx3fb_info *mx3fbi;
	int ret;

	/* Allocate sufficient memory for the fb structure */
	fbi = FUNC1(sizeof(struct mx3fb_info), dev);
	if (!fbi)
		return NULL;

	mx3fbi			= fbi->par;
	mx3fbi->cookie		= -EINVAL;
	mx3fbi->cur_ipu_buf	= 0;

	fbi->var.activate	= FB_ACTIVATE_NOW;

	fbi->fbops		= ops;
	fbi->flags		= FBINFO_FLAG_DEFAULT;
	fbi->pseudo_palette	= mx3fbi->pseudo_palette;

	FUNC3(&mx3fbi->mutex);

	/* Allocate colormap */
	ret = FUNC0(&fbi->cmap, 16, 0);
	if (ret < 0) {
		FUNC2(fbi);
		return NULL;
	}

	return fbi;
}
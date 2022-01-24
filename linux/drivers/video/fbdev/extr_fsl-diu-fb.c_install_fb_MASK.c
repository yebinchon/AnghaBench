#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mfb_info {scalar_t__ index; int registered; int /*<<< orphan*/  id; int /*<<< orphan*/  pseudo_palette; struct fsl_diu_data* parent; } ;
struct fsl_diu_data {scalar_t__ has_edid; int /*<<< orphan*/  edid_data; } ;
struct fb_videomode {int flag; } ;
struct fb_monspecs {unsigned int modedb_len; int misc; struct fb_videomode* modedb; } ;
struct TYPE_4__ {int /*<<< orphan*/  bits_per_pixel; int /*<<< orphan*/  activate; } ;
struct fb_info {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  cmap; TYPE_1__ var; struct fb_monspecs monspecs; int /*<<< orphan*/  modelist; int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/ * fbops; struct mfb_info* par; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct fb_videomode*) ; 
 int EINVAL ; 
 int FBINFO_DEFAULT ; 
 int FBINFO_PARTIAL_PAN_OK ; 
 int FBINFO_READS_FAST ; 
 int FBINFO_VIRTFB ; 
 int /*<<< orphan*/  FB_ACTIVATE_NOW ; 
 int FB_MISC_1ST_DETAIL ; 
 int FB_MODE_IS_FIRST ; 
 scalar_t__ PLANE0 ; 
 int /*<<< orphan*/  default_bpp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct fb_monspecs*) ; 
 int FUNC6 (TYPE_1__*,struct fb_info*,char const*,struct fb_videomode*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* fb_mode ; 
 int /*<<< orphan*/  FUNC7 (struct fb_videomode*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct fb_videomode*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,struct fb_info*) ; 
 struct fb_videomode* fsl_diu_mode_db ; 
 int /*<<< orphan*/  fsl_diu_ops ; 
 scalar_t__ FUNC10 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct fb_info*) ; 

__attribute__((used)) static int FUNC12(struct fb_info *info)
{
	int rc;
	struct mfb_info *mfbi = info->par;
	struct fsl_diu_data *data = mfbi->parent;
	const char *aoi_mode, *init_aoi_mode = "320x240";
	struct fb_videomode *db = fsl_diu_mode_db;
	unsigned int dbsize = FUNC0(fsl_diu_mode_db);
	int has_default_mode = 1;

	info->var.activate = FB_ACTIVATE_NOW;
	info->fbops = &fsl_diu_ops;
	info->flags = FBINFO_DEFAULT | FBINFO_VIRTFB | FBINFO_PARTIAL_PAN_OK |
		FBINFO_READS_FAST;
	info->pseudo_palette = mfbi->pseudo_palette;

	rc = FUNC3(&info->cmap, 16, 0);
	if (rc)
		return rc;

	if (mfbi->index == PLANE0) {
		if (data->has_edid) {
			/* Now build modedb from EDID */
			FUNC5(data->edid_data, &info->monspecs);
			FUNC7(info->monspecs.modedb,
						 info->monspecs.modedb_len,
						 &info->modelist);
			db = info->monspecs.modedb;
			dbsize = info->monspecs.modedb_len;
		}
		aoi_mode = fb_mode;
	} else {
		aoi_mode = init_aoi_mode;
	}
	rc = FUNC6(&info->var, info, aoi_mode, db, dbsize, NULL,
			  default_bpp);
	if (!rc) {
		/*
		 * For plane 0 we continue and look into
		 * driver's internal modedb.
		 */
		if ((mfbi->index == PLANE0) && data->has_edid)
			has_default_mode = 0;
		else
			return -EINVAL;
	}

	if (!has_default_mode) {
		rc = FUNC6(&info->var, info, aoi_mode, fsl_diu_mode_db,
			FUNC0(fsl_diu_mode_db), NULL, default_bpp);
		if (rc)
			has_default_mode = 1;
	}

	/* Still not found, use preferred mode from database if any */
	if (!has_default_mode && info->monspecs.modedb) {
		struct fb_monspecs *specs = &info->monspecs;
		struct fb_videomode *modedb = &specs->modedb[0];

		/*
		 * Get preferred timing. If not found,
		 * first mode in database will be used.
		 */
		if (specs->misc & FB_MISC_1ST_DETAIL) {
			int i;

			for (i = 0; i < specs->modedb_len; i++) {
				if (specs->modedb[i].flag & FB_MODE_IS_FIRST) {
					modedb = &specs->modedb[i];
					break;
				}
			}
		}

		info->var.bits_per_pixel = default_bpp;
		FUNC8(&info->var, modedb);
	}

	if (FUNC9(&info->var, info)) {
		FUNC1(info->dev, "fsl_diu_check_var failed\n");
		FUNC11(info);
		FUNC4(&info->cmap);
		return -EINVAL;
	}

	if (FUNC10(info) < 0) {
		FUNC1(info->dev, "register_framebuffer failed\n");
		FUNC11(info);
		FUNC4(&info->cmap);
		return -EINVAL;
	}

	mfbi->registered = 1;
	FUNC2(info->dev, "%s registered successfully\n", mfbi->id);

	return 0;
}
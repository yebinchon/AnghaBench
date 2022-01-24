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
struct fb_monspecs {int modedb_len; struct fb_videomode* modedb; } ;
typedef  struct fb_monspecs u8 ;
struct omap_video_timings {int dummy; } ;
struct omap_dss_device {TYPE_1__* driver; } ;
struct fb_videomode {scalar_t__ pixclock; int xres; int vmode; } ;
struct TYPE_2__ {int (* read_edid ) (struct omap_dss_device*,struct fb_monspecs*,int) ;int (* check_timings ) (struct omap_dss_device*,struct omap_video_timings*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int FB_VMODE_DOUBLE ; 
 int FB_VMODE_INTERLACED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct fb_videomode*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_monspecs*,struct fb_monspecs*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_videomode*,struct omap_dss_device*,struct omap_video_timings*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_monspecs*) ; 
 struct fb_monspecs* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct fb_monspecs* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct omap_dss_device*,struct fb_monspecs*,int) ; 
 int FUNC7 (struct omap_dss_device*,struct omap_video_timings*) ; 

__attribute__((used)) static int FUNC8(struct omap_dss_device *display,
		struct omap_video_timings *timings)
{
	struct fb_monspecs *specs;
	u8 *edid;
	int r, i, best_idx, len;

	if (!display->driver->read_edid)
		return -ENODEV;

	len = 0x80 * 2;
	edid = FUNC4(len, GFP_KERNEL);
	if (edid == NULL)
		return -ENOMEM;

	r = display->driver->read_edid(display, edid, len);
	if (r < 0)
		goto err1;

	specs = FUNC5(sizeof(*specs), GFP_KERNEL);
	if (specs == NULL) {
		r = -ENOMEM;
		goto err1;
	}

	FUNC1(edid, specs);

	best_idx = -1;

	for (i = 0; i < specs->modedb_len; ++i) {
		struct fb_videomode *m;
		struct omap_video_timings t;

		m = &specs->modedb[i];

		if (m->pixclock == 0)
			continue;

		/* skip repeated pixel modes */
		if (m->xres == 2880 || m->xres == 1440)
			continue;

		if (m->vmode & FB_VMODE_INTERLACED ||
				m->vmode & FB_VMODE_DOUBLE)
			continue;

		FUNC2(m, display, &t);

		r = display->driver->check_timings(display, &t);
		if (r == 0) {
			best_idx = i;
			break;
		}
	}

	if (best_idx == -1) {
		r = -ENOENT;
		goto err2;
	}

	FUNC2(&specs->modedb[best_idx], display,
		timings);

	r = 0;

err2:
	FUNC0(specs->modedb);
	FUNC3(specs);
err1:
	FUNC3(edid);

	return r;
}
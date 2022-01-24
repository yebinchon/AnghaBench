#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sh_mobile_lcdc_chan {int fb_size; TYPE_3__* lcdc; TYPE_1__* cfg; int /*<<< orphan*/  bl; int /*<<< orphan*/  sglist; struct fb_info* info; } ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  bits_per_pixel; int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct fb_info {scalar_t__ state; scalar_t__ fbdefio; TYPE_2__ var; int /*<<< orphan*/  bl_dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ chan; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FBINFO_STATE_SUSPENDED ; 
 scalar_t__ LCDC_CHAN_MAINLCD ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct sh_mobile_lcdc_chan *ch)
{
	struct fb_info *info = ch->info;
	int ret;

	if (info->fbdefio) {
		ch->sglist = FUNC4(sizeof(struct scatterlist) *
				     ch->fb_size >> PAGE_SHIFT);
		if (!ch->sglist)
			return -ENOMEM;
	}

	info->bl_dev = ch->bl;

	ret = FUNC2(info);
	if (ret < 0)
		return ret;

	FUNC0(ch->lcdc->dev, "registered %s/%s as %dx%d %dbpp.\n",
		 FUNC1(ch->lcdc->dev), (ch->cfg->chan == LCDC_CHAN_MAINLCD) ?
		 "mainlcd" : "sublcd", info->var.xres, info->var.yres,
		 info->var.bits_per_pixel);

	/* deferred io mode: disable clock to save power */
	if (info->fbdefio || info->state == FBINFO_STATE_SUSPENDED)
		FUNC3(ch->lcdc);

	return ret;
}
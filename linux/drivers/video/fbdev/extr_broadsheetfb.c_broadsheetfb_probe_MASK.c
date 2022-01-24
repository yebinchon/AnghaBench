#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_10__ {struct broadsheet_board* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_11__ {int* red; int /*<<< orphan*/  blue; int /*<<< orphan*/  green; } ;
struct TYPE_13__ {int line_length; int smem_len; } ;
struct TYPE_12__ {int xres; int yres; int xres_virtual; int yres_virtual; } ;
struct fb_info {char* screen_base; int flags; TYPE_3__ cmap; int /*<<< orphan*/ * fbdefio; struct broadsheetfb_par* par; TYPE_8__ fix; TYPE_7__ var; int /*<<< orphan*/ * fbops; } ;
struct broadsheetfb_par {int panel_index; struct broadsheet_board* board; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  read_reg; int /*<<< orphan*/  write_reg; struct fb_info* info; } ;
struct broadsheet_board {int (* get_panel_type ) () ;int (* setup_irq ) (struct fb_info*) ;int (* init ) (struct broadsheetfb_par*) ;int /*<<< orphan*/  owner; int /*<<< orphan*/  (* cleanup ) (struct broadsheetfb_par*) ;} ;
struct TYPE_9__ {int w; int h; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FBINFO_FLAG_DEFAULT ; 
 int FBINFO_VIRTFB ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  broadsheet_read_reg ; 
 int /*<<< orphan*/  broadsheet_write_reg ; 
 int /*<<< orphan*/  broadsheetfb_defio ; 
 TYPE_8__ broadsheetfb_fix ; 
 int /*<<< orphan*/  broadsheetfb_ops ; 
 TYPE_7__ broadsheetfb_var ; 
 int /*<<< orphan*/  dev_attr_loadstore_waveform ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*,char*,int) ; 
 struct fb_info* FUNC8 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* panel_table ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct fb_info*) ; 
 int FUNC15 (struct fb_info*) ; 
 int FUNC16 (int,int /*<<< orphan*/ ) ; 
 int FUNC17 () ; 
 int FUNC18 (struct fb_info*) ; 
 int FUNC19 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC20 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC23 (unsigned char*) ; 
 unsigned char* FUNC24 (int) ; 

__attribute__((used)) static int FUNC25(struct platform_device *dev)
{
	struct fb_info *info;
	struct broadsheet_board *board;
	int retval = -ENOMEM;
	int videomemorysize;
	unsigned char *videomemory;
	struct broadsheetfb_par *par;
	int i;
	int dpyw, dpyh;
	int panel_index;

	/* pick up board specific routines */
	board = dev->dev.platform_data;
	if (!board)
		return -EINVAL;

	/* try to count device specific driver, if can't, platform recalls */
	if (!FUNC21(board->owner))
		return -ENODEV;

	info = FUNC8(sizeof(struct broadsheetfb_par), &dev->dev);
	if (!info)
		goto err;

	switch (board->get_panel_type()) {
	case 37:
		panel_index = 1;
		break;
	case 97:
		panel_index = 2;
		break;
	case 6:
	default:
		panel_index = 0;
		break;
	}

	dpyw = panel_table[panel_index].w;
	dpyh = panel_table[panel_index].h;

	videomemorysize = FUNC16((dpyw*dpyh), PAGE_SIZE);

	videomemory = FUNC24(videomemorysize);
	if (!videomemory)
		goto err_fb_rel;

	info->screen_base = (char *)videomemory;
	info->fbops = &broadsheetfb_ops;

	broadsheetfb_var.xres = dpyw;
	broadsheetfb_var.yres = dpyh;
	broadsheetfb_var.xres_virtual = dpyw;
	broadsheetfb_var.yres_virtual = dpyh;
	info->var = broadsheetfb_var;

	broadsheetfb_fix.line_length = dpyw;
	info->fix = broadsheetfb_fix;
	info->fix.smem_len = videomemorysize;
	par = info->par;
	par->panel_index = panel_index;
	par->info = info;
	par->board = board;
	par->write_reg = broadsheet_write_reg;
	par->read_reg = broadsheet_read_reg;
	FUNC10(&par->waitq);

	FUNC13(&par->io_lock);

	info->flags = FBINFO_FLAG_DEFAULT | FBINFO_VIRTFB;

	info->fbdefio = &broadsheetfb_defio;
	FUNC6(info);

	retval = FUNC4(&info->cmap, 16, 0);
	if (retval < 0) {
		FUNC2(&dev->dev, "Failed to allocate colormap\n");
		goto err_vfree;
	}

	/* set cmap */
	for (i = 0; i < 16; i++)
		info->cmap.red[i] = (((2*i)+1)*(0xFFFF))/32;
	FUNC11(info->cmap.green, info->cmap.red, sizeof(u16)*16);
	FUNC11(info->cmap.blue, info->cmap.red, sizeof(u16)*16);

	retval = par->board->setup_irq(info);
	if (retval < 0)
		goto err_cmap;

	/* this inits the dpy */
	retval = board->init(par);
	if (retval < 0)
		goto err_free_irq;

	FUNC0(par);

	FUNC1(par);

	retval = FUNC15(info);
	if (retval < 0)
		goto err_free_irq;

	FUNC14(dev, info);

	retval = FUNC3(&dev->dev, &dev_attr_loadstore_waveform);
	if (retval < 0)
		goto err_unreg_fb;

	FUNC7(info, "Broadsheet frame buffer, using %dK of video memory\n",
		videomemorysize >> 10);


	return 0;

err_unreg_fb:
	FUNC22(info);
err_free_irq:
	board->cleanup(par);
err_cmap:
	FUNC5(&info->cmap);
err_vfree:
	FUNC23(videomemory);
err_fb_rel:
	FUNC9(info);
err:
	FUNC12(board->owner);
	return retval;

}
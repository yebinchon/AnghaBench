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
typedef  int u32 ;
struct savagefb_par {int /*<<< orphan*/  (* SavageWaitFifo ) (struct savagefb_par*,int) ;scalar_t__ bci_ptr; } ;
struct TYPE_2__ {scalar_t__ visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_1__ fix; struct savagefb_par* par; } ;
struct fb_image {int width; int height; int depth; int fg_color; int bg_color; int /*<<< orphan*/  dy; scalar_t__ dx; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int BCI_CMD_CLIP_LR ; 
 int BCI_CMD_DEST_GBD ; 
 int BCI_CMD_RECT ; 
 int BCI_CMD_RECT_XP ; 
 int BCI_CMD_RECT_YP ; 
 int BCI_CMD_SEND_COLOR ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int BCI_CMD_SRC_MONO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*,struct fb_image const*) ; 
 int /*<<< orphan*/ * savagefb_rop ; 
 int /*<<< orphan*/  FUNC6 (struct savagefb_par*,int) ; 

void FUNC7(struct fb_info *info, const struct fb_image *image)
{
	struct savagefb_par *par = info->par;
	int fg, bg, size, i, width;
	int cmd;
	u32 *src = (u32 *) image->data;

	if (!image->width || !image->height)
		return;

	if (image->depth != 1) {
		FUNC5(info, image);
		return;
	}

	if (info->fix.visual == FB_VISUAL_PSEUDOCOLOR) {
		fg = image->fg_color;
		bg = image->bg_color;
	} else {
		fg = ((u32 *)info->pseudo_palette)[image->fg_color];
		bg = ((u32 *)info->pseudo_palette)[image->bg_color];
	}

	cmd = BCI_CMD_RECT | BCI_CMD_RECT_XP | BCI_CMD_RECT_YP |
	      BCI_CMD_CLIP_LR | BCI_CMD_DEST_GBD | BCI_CMD_SRC_MONO |
	      BCI_CMD_SEND_COLOR;

	par->bci_ptr = 0;
	FUNC1(cmd, savagefb_rop[0]);

	width = (image->width + 31) & ~31;
	size = (width * image->height)/8;
	size >>= 2;

	par->SavageWaitFifo(par, size + 5);
	FUNC2(cmd);
	FUNC2(FUNC0(image->dx, image->dx + image->width - 1));
	FUNC2(fg);
	FUNC2(bg);
	FUNC2(FUNC4(image->dx, image->dy));
	FUNC2(FUNC3(width, image->height));
	for (i = 0; i < size; i++)
		FUNC2(src[i]);
}
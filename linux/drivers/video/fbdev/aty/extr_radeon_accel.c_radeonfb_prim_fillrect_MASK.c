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
struct radeonfb_info {int dp_gui_master_cntl; int* pseudo_palette; int /*<<< orphan*/  depth; } ;
struct fb_fillrect {size_t color; int dy; int dx; int width; int height; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_BRUSH_FRGD_CLR ; 
 int /*<<< orphan*/  DP_CNTL ; 
 int /*<<< orphan*/  DP_GUI_MASTER_CNTL ; 
 int /*<<< orphan*/  DP_WRITE_MSK ; 
 int /*<<< orphan*/  DSTCACHE_CTLSTAT ; 
 scalar_t__ DST_8BPP ; 
 int /*<<< orphan*/  DST_WIDTH_HEIGHT ; 
 int DST_X_LEFT_TO_RIGHT ; 
 int DST_Y_TOP_TO_BOTTOM ; 
 int /*<<< orphan*/  DST_Y_X ; 
 int GMC_BRUSH_SOLID_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int RB2D_DC_FLUSH_ALL ; 
 int ROP3_P ; 
 int WAIT_2D_IDLECLEAN ; 
 int WAIT_DMA_GUI_IDLE ; 
 int /*<<< orphan*/  WAIT_UNTIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct radeonfb_info *rinfo, 
				   const struct fb_fillrect *region)
{
	FUNC1(4);  
  
	FUNC0(DP_GUI_MASTER_CNTL,  
		rinfo->dp_gui_master_cntl  /* contains, like GMC_DST_32BPP */
                | GMC_BRUSH_SOLID_COLOR
                | ROP3_P);
	if (FUNC2(rinfo->depth) != DST_8BPP)
		FUNC0(DP_BRUSH_FRGD_CLR, rinfo->pseudo_palette[region->color]);
	else
		FUNC0(DP_BRUSH_FRGD_CLR, region->color);
	FUNC0(DP_WRITE_MSK, 0xffffffff);
	FUNC0(DP_CNTL, (DST_X_LEFT_TO_RIGHT | DST_Y_TOP_TO_BOTTOM));

	FUNC1(2);
	FUNC0(DSTCACHE_CTLSTAT, RB2D_DC_FLUSH_ALL);
	FUNC0(WAIT_UNTIL, (WAIT_2D_IDLECLEAN | WAIT_DMA_GUI_IDLE));

	FUNC1(2);  
	FUNC0(DST_Y_X, (region->dy << 16) | region->dx);
	FUNC0(DST_WIDTH_HEIGHT, (region->width << 16) | region->height);
}
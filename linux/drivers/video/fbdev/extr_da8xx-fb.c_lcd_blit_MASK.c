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
typedef  int u32 ;
struct da8xx_fb_par {int dma_start; int dma_end; int p_palette_base; int palette_sz; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_ONLY ; 
 int /*<<< orphan*/  LCD_DMA_CTRL_REG ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_BASE_ADDR_0_REG ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_BASE_ADDR_1_REG ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG ; 
 int /*<<< orphan*/  LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG ; 
 int LCD_DUAL_FRAME_BUFFER_ENABLE ; 
 int LCD_FRAME_DONE ; 
 int /*<<< orphan*/  LCD_INT_ENABLE_SET_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 int LCD_SYNC_LOST ; 
 int LCD_V1_END_OF_FRAME_INT_ENA ; 
 int LCD_V1_PL_INT_ENA ; 
 int LCD_V2_END_OF_FRAME0_INT_ENA ; 
 int LCD_V2_END_OF_FRAME1_INT_ENA ; 
 int LCD_V2_PL_INT_ENA ; 
 scalar_t__ LCD_VERSION_1 ; 
 int LOAD_DATA ; 
 int LOAD_PALETTE ; 
 int /*<<< orphan*/  PALETTE_ONLY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ lcd_revision ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int load_mode, struct da8xx_fb_par *par)
{
	u32 start;
	u32 end;
	u32 reg_ras;
	u32 reg_dma;
	u32 reg_int;

	/* init reg to clear PLM (loading mode) fields */
	reg_ras = FUNC2(LCD_RASTER_CTRL_REG);
	reg_ras &= ~(3 << 20);

	reg_dma  = FUNC2(LCD_DMA_CTRL_REG);

	if (load_mode == LOAD_DATA) {
		start    = par->dma_start;
		end      = par->dma_end;

		reg_ras |= FUNC0(DATA_ONLY);
		if (lcd_revision == LCD_VERSION_1) {
			reg_dma |= LCD_V1_END_OF_FRAME_INT_ENA;
		} else {
			reg_int = FUNC2(LCD_INT_ENABLE_SET_REG) |
				LCD_V2_END_OF_FRAME0_INT_ENA |
				LCD_V2_END_OF_FRAME1_INT_ENA |
				LCD_FRAME_DONE | LCD_SYNC_LOST;
			FUNC3(reg_int, LCD_INT_ENABLE_SET_REG);
		}
		reg_dma |= LCD_DUAL_FRAME_BUFFER_ENABLE;

		FUNC3(start, LCD_DMA_FRM_BUF_BASE_ADDR_0_REG);
		FUNC3(end, LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG);
		FUNC3(start, LCD_DMA_FRM_BUF_BASE_ADDR_1_REG);
		FUNC3(end, LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG);
	} else if (load_mode == LOAD_PALETTE) {
		start    = par->p_palette_base;
		end      = start + par->palette_sz - 1;

		reg_ras |= FUNC0(PALETTE_ONLY);

		if (lcd_revision == LCD_VERSION_1) {
			reg_ras |= LCD_V1_PL_INT_ENA;
		} else {
			reg_int = FUNC2(LCD_INT_ENABLE_SET_REG) |
				LCD_V2_PL_INT_ENA;
			FUNC3(reg_int, LCD_INT_ENABLE_SET_REG);
		}

		FUNC3(start, LCD_DMA_FRM_BUF_BASE_ADDR_0_REG);
		FUNC3(end, LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG);
	}

	FUNC3(reg_dma, LCD_DMA_CTRL_REG);
	FUNC3(reg_ras, LCD_RASTER_CTRL_REG);

	/*
	 * The Raster enable bit must be set after all other control fields are
	 * set.
	 */
	FUNC1();
}
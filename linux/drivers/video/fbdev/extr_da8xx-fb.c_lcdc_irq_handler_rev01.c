
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct da8xx_fb_par {int which_dma_channel_done; int dma_start; int dma_end; int vsync_flag; int vsync_wait; } ;
typedef int irqreturn_t ;


 int DA8XX_FRAME_NOWAIT ;
 int IRQ_HANDLED ;
 int LCD_DMA_FRM_BUF_BASE_ADDR_0_REG ;
 int LCD_DMA_FRM_BUF_BASE_ADDR_1_REG ;
 int LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG ;
 int LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG ;
 int LCD_END_OF_FRAME0 ;
 int LCD_END_OF_FRAME1 ;
 int LCD_FIFO_UNDERFLOW ;
 int LCD_PL_LOAD_DONE ;
 int LCD_RASTER_CTRL_REG ;
 int LCD_STAT_REG ;
 int LCD_SYNC_LOST ;
 int LCD_V1_PL_INT_ENA ;
 int LOAD_DATA ;
 int lcd_blit (int ,struct da8xx_fb_par*) ;
 int lcd_disable_raster (int ) ;
 int lcd_enable_raster () ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t lcdc_irq_handler_rev01(int irq, void *arg)
{
 struct da8xx_fb_par *par = arg;
 u32 stat = lcdc_read(LCD_STAT_REG);
 u32 reg_ras;

 if ((stat & LCD_SYNC_LOST) && (stat & LCD_FIFO_UNDERFLOW)) {
  lcd_disable_raster(DA8XX_FRAME_NOWAIT);
  lcdc_write(stat, LCD_STAT_REG);
  lcd_enable_raster();
 } else if (stat & LCD_PL_LOAD_DONE) {






  lcd_disable_raster(DA8XX_FRAME_NOWAIT);

  lcdc_write(stat, LCD_STAT_REG);


  reg_ras = lcdc_read(LCD_RASTER_CTRL_REG);
  reg_ras &= ~LCD_V1_PL_INT_ENA;
  lcdc_write(reg_ras, LCD_RASTER_CTRL_REG);


  lcd_blit(LOAD_DATA, par);
 } else {
  lcdc_write(stat, LCD_STAT_REG);

  if (stat & LCD_END_OF_FRAME0) {
   par->which_dma_channel_done = 0;
   lcdc_write(par->dma_start,
       LCD_DMA_FRM_BUF_BASE_ADDR_0_REG);
   lcdc_write(par->dma_end,
       LCD_DMA_FRM_BUF_CEILING_ADDR_0_REG);
   par->vsync_flag = 1;
   wake_up_interruptible(&par->vsync_wait);
  }

  if (stat & LCD_END_OF_FRAME1) {
   par->which_dma_channel_done = 1;
   lcdc_write(par->dma_start,
       LCD_DMA_FRM_BUF_BASE_ADDR_1_REG);
   lcdc_write(par->dma_end,
       LCD_DMA_FRM_BUF_CEILING_ADDR_1_REG);
   par->vsync_flag = 1;
   wake_up_interruptible(&par->vsync_wait);
  }
 }

 return IRQ_HANDLED;
}

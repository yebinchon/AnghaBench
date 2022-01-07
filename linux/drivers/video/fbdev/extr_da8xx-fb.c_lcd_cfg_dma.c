
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LCD_DMA_BURST_1 ;
 int LCD_DMA_BURST_16 ;
 int LCD_DMA_BURST_2 ;
 int LCD_DMA_BURST_4 ;
 int LCD_DMA_BURST_8 ;
 int LCD_DMA_BURST_SIZE (int ) ;
 int LCD_DMA_CTRL_REG ;
 int lcdc_read (int ) ;
 int lcdc_write (int,int ) ;

__attribute__((used)) static int lcd_cfg_dma(int burst_size, int fifo_th)
{
 u32 reg;

 reg = lcdc_read(LCD_DMA_CTRL_REG) & 0x00000001;
 switch (burst_size) {
 case 1:
  reg |= LCD_DMA_BURST_SIZE(LCD_DMA_BURST_1);
  break;
 case 2:
  reg |= LCD_DMA_BURST_SIZE(LCD_DMA_BURST_2);
  break;
 case 4:
  reg |= LCD_DMA_BURST_SIZE(LCD_DMA_BURST_4);
  break;
 case 8:
  reg |= LCD_DMA_BURST_SIZE(LCD_DMA_BURST_8);
  break;
 case 16:
 default:
  reg |= LCD_DMA_BURST_SIZE(LCD_DMA_BURST_16);
  break;
 }

 reg |= (fifo_th << 8);

 lcdc_write(reg, LCD_DMA_CTRL_REG);

 return 0;
}

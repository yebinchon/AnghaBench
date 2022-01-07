
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HGA_GFX ;
 int HGA_GFX_MODE_EN ;
 int HGA_GFX_PORT ;
 int HGA_MODE_GRAPHICS ;
 int HGA_MODE_PORT ;
 int HGA_MODE_VIDEO_EN ;
 int HGA_STATUS_PORT ;
 int hga_mode ;
 int hga_reg_lock ;
 int outb_p (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_hga_b (int,int) ;
 int write_hga_w (int,int) ;

__attribute__((used)) static void hga_gfx_mode(void)
{
 unsigned long flags;

 spin_lock_irqsave(&hga_reg_lock, flags);
 outb_p(0x00, HGA_STATUS_PORT);
 outb_p(HGA_GFX_MODE_EN, HGA_GFX_PORT);
 outb_p(HGA_MODE_VIDEO_EN | HGA_MODE_GRAPHICS, HGA_MODE_PORT);

 write_hga_b(0x35, 0x00);
 write_hga_b(0x2d, 0x01);
 write_hga_b(0x2e, 0x02);
 write_hga_b(0x07, 0x03);

 write_hga_b(0x5b, 0x04);
 write_hga_b(0x02, 0x05);
 write_hga_b(0x57, 0x06);
 write_hga_b(0x57, 0x07);

 write_hga_b(0x02, 0x08);
 write_hga_b(0x03, 0x09);
 write_hga_b(0x00, 0x0a);
 write_hga_b(0x00, 0x0b);

 write_hga_w(0x0000, 0x0c);
 write_hga_w(0x0000, 0x0e);

 hga_mode = HGA_GFX;
 spin_unlock_irqrestore(&hga_reg_lock, flags);
}

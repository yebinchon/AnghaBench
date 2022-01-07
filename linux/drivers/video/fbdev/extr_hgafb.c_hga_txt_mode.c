
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HGA_GFX_PORT ;
 int HGA_MODE_BLINK_EN ;
 int HGA_MODE_PORT ;
 int HGA_MODE_VIDEO_EN ;
 int HGA_STATUS_PORT ;
 int HGA_TXT ;
 int hga_mode ;
 int hga_reg_lock ;
 int outb_p (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_hga_b (int,int) ;
 int write_hga_w (int,int) ;

__attribute__((used)) static void hga_txt_mode(void)
{
 unsigned long flags;

 spin_lock_irqsave(&hga_reg_lock, flags);
 outb_p(HGA_MODE_VIDEO_EN | HGA_MODE_BLINK_EN, HGA_MODE_PORT);
 outb_p(0x00, HGA_GFX_PORT);
 outb_p(0x00, HGA_STATUS_PORT);

 write_hga_b(0x61, 0x00);
 write_hga_b(0x50, 0x01);
 write_hga_b(0x52, 0x02);
 write_hga_b(0x0f, 0x03);

 write_hga_b(0x19, 0x04);
 write_hga_b(0x06, 0x05);
 write_hga_b(0x19, 0x06);
 write_hga_b(0x19, 0x07);

 write_hga_b(0x02, 0x08);
 write_hga_b(0x0d, 0x09);
 write_hga_b(0x0c, 0x0a);
 write_hga_b(0x0d, 0x0b);

 write_hga_w(0x0000, 0x0c);
 write_hga_w(0x0000, 0x0e);

 hga_mode = HGA_TXT;
 spin_unlock_irqrestore(&hga_reg_lock, flags);
}

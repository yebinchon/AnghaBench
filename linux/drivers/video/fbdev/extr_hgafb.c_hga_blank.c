
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HGA_MODE_GRAPHICS ;
 int HGA_MODE_PORT ;
 int HGA_MODE_VIDEO_EN ;
 int hga_reg_lock ;
 int outb_p (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hga_blank(int blank_mode)
{
 unsigned long flags;

 spin_lock_irqsave(&hga_reg_lock, flags);
 if (blank_mode) {
  outb_p(0x00, HGA_MODE_PORT);
 } else {
  outb_p(HGA_MODE_VIDEO_EN | HGA_MODE_GRAPHICS, HGA_MODE_PORT);
 }
 spin_unlock_irqrestore(&hga_reg_lock, flags);
}

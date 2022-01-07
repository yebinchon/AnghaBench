
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HGA_GFX ;
 scalar_t__ HGA_TXT ;
 scalar_t__ hga_mode ;
 int hga_reg_lock ;
 int hga_vram ;
 int hga_vram_len ;
 int memset_io (int ,unsigned char,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hga_clear_screen(void)
{
 unsigned char fillchar = 0xbf;
 unsigned long flags;

 spin_lock_irqsave(&hga_reg_lock, flags);
 if (hga_mode == HGA_TXT)
  fillchar = ' ';
 else if (hga_mode == HGA_GFX)
  fillchar = 0x00;
 spin_unlock_irqrestore(&hga_reg_lock, flags);
 if (fillchar != 0xbf)
  memset_io(hga_vram, fillchar, hga_vram_len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_ATT_W ;
 int VGA_IS1_RC ;
 scalar_t__ paletteEnabled ;
 int vga_r (int *,int ) ;
 int vga_w (int *,int ,int) ;

__attribute__((used)) static inline void VGAdisablePalette(void)
{
 vga_r(((void*)0), VGA_IS1_RC);
 vga_w(((void*)0), VGA_ATT_W, 0x20);
 paletteEnabled = 0;
}

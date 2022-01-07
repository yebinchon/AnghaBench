
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VGA_GFX_BIT_MASK ;
 int vga_io_rgfx (int ) ;

__attribute__((used)) static inline int selectmask(void)
{
 return vga_io_rgfx(VGA_GFX_BIT_MASK);
}

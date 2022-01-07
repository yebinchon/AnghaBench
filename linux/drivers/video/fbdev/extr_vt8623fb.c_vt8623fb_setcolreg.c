
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
struct TYPE_3__ {int length; } ;
struct TYPE_4__ {int bits_per_pixel; TYPE_1__ green; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_2__ var; } ;


 int EINVAL ;
 int VGA_PEL_D ;
 int VGA_PEL_IW ;
 int VGA_PEL_MSK ;
 int outb (int,int ) ;

__attribute__((used)) static int vt8623fb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
    u_int transp, struct fb_info *fb)
{
 switch (fb->var.bits_per_pixel) {
 case 0:
 case 4:
  if (regno >= 16)
   return -EINVAL;

  outb(0x0F, VGA_PEL_MSK);
  outb(regno, VGA_PEL_IW);
  outb(red >> 10, VGA_PEL_D);
  outb(green >> 10, VGA_PEL_D);
  outb(blue >> 10, VGA_PEL_D);
  break;
 case 8:
  if (regno >= 256)
   return -EINVAL;

  outb(0xFF, VGA_PEL_MSK);
  outb(regno, VGA_PEL_IW);
  outb(red >> 10, VGA_PEL_D);
  outb(green >> 10, VGA_PEL_D);
  outb(blue >> 10, VGA_PEL_D);
  break;
 case 16:
  if (regno >= 16)
   return 0;

  if (fb->var.green.length == 5)
   ((u32*)fb->pseudo_palette)[regno] = ((red & 0xF800) >> 1) |
    ((green & 0xF800) >> 6) | ((blue & 0xF800) >> 11);
  else if (fb->var.green.length == 6)
   ((u32*)fb->pseudo_palette)[regno] = (red & 0xF800) |
    ((green & 0xFC00) >> 5) | ((blue & 0xF800) >> 11);
  else
   return -EINVAL;
  break;
 case 24:
 case 32:
  if (regno >= 16)
   return 0;


  ((u32*)fb->pseudo_palette)[regno] = ((red & 0xFF00) << 8) |
   (green & 0xFF00) | ((blue & 0xFF00) >> 8);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vga16fb_par {int clkdiv; int misc; } ;
struct fb_info {int dummy; } ;



__attribute__((used)) static void vga16fb_clock_chip(struct vga16fb_par *par,
          unsigned int pixclock,
          const struct fb_info *info,
          int mul, int div)
{
 static const struct {
  u32 pixclock;
  u8 misc;
  u8 seq_clock_mode;
 } *ptr, *best, vgaclocks[] = {
  { 79442 , 0x00, 0x08},
  { 70616 , 0x04, 0x08},
  { 39721 , 0x00, 0x00},
  { 35308 , 0x04, 0x00},
  { 0 , 0x00, 0x00}};
 int err;

 pixclock = (pixclock * mul) / div;
 best = vgaclocks;
 err = pixclock - best->pixclock;
 if (err < 0) err = -err;
 for (ptr = vgaclocks + 1; ptr->pixclock; ptr++) {
  int tmp;

  tmp = pixclock - ptr->pixclock;
  if (tmp < 0) tmp = -tmp;
  if (tmp < err) {
   err = tmp;
   best = ptr;
  }
 }
 par->misc |= best->misc;
 par->clkdiv = best->seq_clock_mode;
 pixclock = (best->pixclock * div) / mul;
}

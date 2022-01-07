
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_info {int dummy; } ;


 int mm_write_ind (int ,int ,int,int) ;
 scalar_t__ mmio_base ;
 int readb (scalar_t__) ;

__attribute__((used)) static void mm_write_ar(struct fb_info *p, u8 reg, u8 data)
{
 readb(mmio_base + 0x7b4);
 mm_write_ind(reg, data, 0x780, 0x780);
}

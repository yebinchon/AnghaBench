
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int dummy; } ;
typedef int a ;



__attribute__((used)) static void
sisusbcon_invert_region(struct vc_data *vc, u16 *p, int count)
{






 while (count--) {
  u16 a = *p;

  *p++ = ((a) & 0x88ff) |
         (((a) & 0x7000) >> 4) |
         (((a) & 0x0700) << 4);
 }
}

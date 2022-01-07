
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vc_data {int dummy; } ;


 int scr_readw (int *) ;
 int scr_writew (int,int *) ;

__attribute__((used)) static void mdacon_invert_region(struct vc_data *c, u16 *p, int count)
{
 for (; count > 0; count--) {
  scr_writew(scr_readw(p) ^ 0x0800, p);
  p++;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmagbafb_par {int dummy; } ;
struct fb_info {struct pmagbafb_par* par; } ;


 int BT459_ADDR_HI ;
 int BT459_ADDR_LO ;
 int BT459_DATA ;
 int dac_write (struct pmagbafb_par*,int ,int) ;
 int mb () ;
 int wmb () ;

__attribute__((used)) static void pmagbafb_erase_cursor(struct fb_info *info)
{
 struct pmagbafb_par *par = info->par;

 mb();
 dac_write(par, BT459_ADDR_LO, 0x00);
 dac_write(par, BT459_ADDR_HI, 0x03);
 wmb();
 dac_write(par, BT459_DATA, 0x00);
}

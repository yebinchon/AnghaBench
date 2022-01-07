
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_info {struct aafb_par* par; } ;
struct aafb_par {int bt455; } ;


 int bt455_write_cmap_entry (int ,int,int) ;

__attribute__((used)) static int aafb_blank(int blank, struct fb_info *info)
{
 struct aafb_par *par = info->par;
 u8 val = blank ? 0x00 : 0x0f;

 bt455_write_cmap_entry(par->bt455, 1, val);
 return 0;
}

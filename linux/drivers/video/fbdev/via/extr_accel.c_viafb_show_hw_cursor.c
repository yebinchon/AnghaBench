
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct viafb_par {int iga_path; TYPE_2__* shared; } ;
struct fb_info {struct viafb_par* par; } ;
struct TYPE_4__ {TYPE_1__* vdev; } ;
struct TYPE_3__ {scalar_t__ engine_mmio; } ;






 scalar_t__ VIA_REG_CURSOR_MODE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void viafb_show_hw_cursor(struct fb_info *info, int Status)
{
 struct viafb_par *viapar = info->par;
 u32 temp, iga_path = viapar->iga_path;

 temp = readl(viapar->shared->vdev->engine_mmio + VIA_REG_CURSOR_MODE);
 switch (Status) {
 case 130:
  temp |= 0x1;
  break;
 case 131:
  temp &= 0xFFFFFFFE;
  break;
 }
 switch (iga_path) {
 case 128:
  temp |= 0x80000000;
  break;
 case 129:
 default:
  temp &= 0x7FFFFFFF;
 }
 writel(temp, viapar->shared->vdev->engine_mmio + VIA_REG_CURSOR_MODE);
}

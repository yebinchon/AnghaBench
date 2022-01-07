
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; scalar_t__ par; } ;
struct atyfb_par {scalar_t__ bus_type; int aux_start; } ;


 scalar_t__ GUI_RESERVE ;
 scalar_t__ ISA ;

__attribute__((used)) static void aty_fudge_framebuffer_len(struct fb_info *info)
{
 struct atyfb_par *par = (struct atyfb_par *) info->par;

 if (!par->aux_start &&
     (info->fix.smem_len == 0x800000 ||
      (par->bus_type == ISA && info->fix.smem_len == 0x400000)))
  info->fix.smem_len -= GUI_RESERVE;
}

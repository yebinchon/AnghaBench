
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int len; int base; } ;
struct TYPE_4__ {int len_usable; int base; } ;
struct fb_fix_screeninfo {int ypanstep; int xpanstep; scalar_t__ accel; int mmio_len; int mmio_start; scalar_t__ ywrapstep; int smem_len; int smem_start; int id; } ;
struct TYPE_6__ {struct fb_fix_screeninfo fix; } ;
struct matroxfb_dh_fb_info {TYPE_2__ mmio; TYPE_1__ video; TYPE_3__ fbcon; } ;


 int strcpy (int ,char*) ;

__attribute__((used)) static void matroxfb_dh_init_fix(struct matroxfb_dh_fb_info *m2info)
{
 struct fb_fix_screeninfo *fix = &m2info->fbcon.fix;

 strcpy(fix->id, "MATROX DH");

 fix->smem_start = m2info->video.base;
 fix->smem_len = m2info->video.len_usable;
 fix->ypanstep = 1;
 fix->ywrapstep = 0;
 fix->xpanstep = 8;
 fix->mmio_start = m2info->mmio.base;
 fix->mmio_len = m2info->mmio.len;
 fix->accel = 0;
}

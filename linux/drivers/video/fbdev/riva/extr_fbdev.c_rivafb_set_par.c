
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int (* LockUnlock ) (TYPE_4__*,int ) ;} ;
struct riva_par {int cursor_reset; TYPE_4__ riva; } ;
struct TYPE_7__ {int scan_align; } ;
struct TYPE_6__ {int xres_virtual; int bits_per_pixel; } ;
struct TYPE_5__ {int line_length; int visual; } ;
struct fb_info {int flags; TYPE_3__ pixmap; TYPE_2__ var; TYPE_1__ fix; struct riva_par* par; } ;


 int CRTCout (struct riva_par*,int,int) ;
 int FBINFO_HWACCEL_DISABLED ;
 int FB_VISUAL_DIRECTCOLOR ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int riva_load_video_mode (struct fb_info*) ;
 int riva_setup_accel (struct fb_info*) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static int rivafb_set_par(struct fb_info *info)
{
 struct riva_par *par = info->par;
 int rc = 0;

 NVTRACE_ENTER();

 CRTCout(par, 0x11, 0xFF);
 par->riva.LockUnlock(&par->riva, 0);
 rc = riva_load_video_mode(info);
 if (rc)
  goto out;
 if(!(info->flags & FBINFO_HWACCEL_DISABLED))
  riva_setup_accel(info);

 par->cursor_reset = 1;
 info->fix.line_length = (info->var.xres_virtual * (info->var.bits_per_pixel >> 3));
 info->fix.visual = (info->var.bits_per_pixel == 8) ?
    FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_DIRECTCOLOR;

 if (info->flags & FBINFO_HWACCEL_DISABLED)
  info->pixmap.scan_align = 1;
 else
  info->pixmap.scan_align = 4;

out:
 NVTRACE_LEAVE();
 return rc;
}

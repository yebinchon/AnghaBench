
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vgastate {int dummy; } ;
struct TYPE_4__ {scalar_t__ Architecture; int (* LockUnlock ) (TYPE_1__*,int ) ;} ;
struct TYPE_5__ {int flags; } ;
struct riva_par {int open_lock; int ref_count; int initial_state; TYPE_1__ riva; TYPE_2__ state; } ;
struct fb_info {struct riva_par* par; } ;


 int CRTCout (struct riva_par*,int,int) ;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 scalar_t__ NV_ARCH_03 ;
 int VGA_SAVE_CMAP ;
 int VGA_SAVE_FONTS ;
 int VGA_SAVE_MODE ;
 int memset (TYPE_2__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int riva_save_state (struct riva_par*,int *) ;
 int save_vga (TYPE_2__*) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int rivafb_open(struct fb_info *info, int user)
{
 struct riva_par *par = info->par;

 NVTRACE_ENTER();
 mutex_lock(&par->open_lock);
 if (!par->ref_count) {
  CRTCout(par, 0x11, 0xFF);
  par->riva.LockUnlock(&par->riva, 0);

  riva_save_state(par, &par->initial_state);
 }
 par->ref_count++;
 mutex_unlock(&par->open_lock);
 NVTRACE_LEAVE();
 return 0;
}

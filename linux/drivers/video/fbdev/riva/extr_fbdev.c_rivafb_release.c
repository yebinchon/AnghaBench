
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* LockUnlock ) (TYPE_1__*,int) ;int (* LoadStateExt ) (TYPE_1__*,int *) ;} ;
struct TYPE_6__ {int ext; } ;
struct riva_par {int ref_count; int open_lock; TYPE_1__ riva; int state; TYPE_4__ initial_state; } ;
struct fb_info {struct riva_par* par; } ;


 int EINVAL ;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int restore_vga (int *) ;
 int riva_load_state (struct riva_par*,TYPE_4__*) ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int *) ;
 int stub3 (TYPE_1__*,int) ;

__attribute__((used)) static int rivafb_release(struct fb_info *info, int user)
{
 struct riva_par *par = info->par;

 NVTRACE_ENTER();
 mutex_lock(&par->open_lock);
 if (!par->ref_count) {
  mutex_unlock(&par->open_lock);
  return -EINVAL;
 }
 if (par->ref_count == 1) {
  par->riva.LockUnlock(&par->riva, 0);
  par->riva.LoadStateExt(&par->riva, &par->initial_state.ext);
  riva_load_state(par, &par->initial_state);



  par->riva.LockUnlock(&par->riva, 1);
 }
 par->ref_count--;
 mutex_unlock(&par->open_lock);
 NVTRACE_LEAVE();
 return 0;
}

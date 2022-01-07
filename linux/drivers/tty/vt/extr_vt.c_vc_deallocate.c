
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vt_notifier_param {struct vc_data* vc; } ;
struct vc_data {int vc_screenbuf; int vt_pid; } ;
struct TYPE_2__ {struct vc_data* d; } ;


 int VT_DEALLOCATE ;
 int WARN_CONSOLE_UNLOCKED () ;
 int atomic_notifier_call_chain (int *,int ,struct vt_notifier_param*) ;
 int kfree (int ) ;
 int put_pid (int ) ;
 TYPE_1__* vc_cons ;
 scalar_t__ vc_cons_allocated (unsigned int) ;
 int vc_uniscr_set (struct vc_data*,int *) ;
 int vcs_remove_sysfs (unsigned int) ;
 int visual_deinit (struct vc_data*) ;
 int vt_notifier_list ;

struct vc_data *vc_deallocate(unsigned int currcons)
{
 struct vc_data *vc = ((void*)0);

 WARN_CONSOLE_UNLOCKED();

 if (vc_cons_allocated(currcons)) {
  struct vt_notifier_param param;

  param.vc = vc = vc_cons[currcons].d;
  atomic_notifier_call_chain(&vt_notifier_list, VT_DEALLOCATE, &param);
  vcs_remove_sysfs(currcons);
  visual_deinit(vc);
  put_pid(vc->vt_pid);
  vc_uniscr_set(vc, ((void*)0));
  kfree(vc->vc_screenbuf);
  vc_cons[currcons].d = ((void*)0);
 }
 return vc;
}

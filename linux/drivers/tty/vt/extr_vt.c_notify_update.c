
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_notifier_param {struct vc_data* vc; } ;
struct vc_data {int dummy; } ;


 int VT_UPDATE ;
 int atomic_notifier_call_chain (int *,int ,struct vt_notifier_param*) ;
 int vt_notifier_list ;

__attribute__((used)) static void notify_update(struct vc_data *vc)
{
 struct vt_notifier_param param = { .vc = vc };
 atomic_notifier_call_chain(&vt_notifier_list, VT_UPDATE, &param);
}

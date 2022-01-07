
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overlay_changeset {int count; struct fragment* fragments; } ;
struct of_overlay_notify_data {int target; int overlay; } ;
struct fragment {int overlay; int target; } ;
typedef enum of_overlay_notify_action { ____Placeholder_of_overlay_notify_action } of_overlay_notify_action ;


 int NOTIFY_OK ;
 int NOTIFY_STOP ;
 int blocking_notifier_call_chain (int *,int,struct of_overlay_notify_data*) ;
 int notifier_to_errno (int) ;
 int * of_overlay_action_name ;
 int overlay_notify_chain ;
 int pr_err (char*,int ,int,int ) ;

__attribute__((used)) static int overlay_notify(struct overlay_changeset *ovcs,
  enum of_overlay_notify_action action)
{
 struct of_overlay_notify_data nd;
 int i, ret;

 for (i = 0; i < ovcs->count; i++) {
  struct fragment *fragment = &ovcs->fragments[i];

  nd.target = fragment->target;
  nd.overlay = fragment->overlay;

  ret = blocking_notifier_call_chain(&overlay_notify_chain,
         action, &nd);
  if (ret == NOTIFY_OK || ret == NOTIFY_STOP)
   return 0;
  if (ret) {
   ret = notifier_to_errno(ret);
   pr_err("overlay changeset %s notifier error %d, target: %pOF\n",
          of_overlay_action_name[action], ret, nd.target);
   return ret;
  }
 }

 return 0;
}

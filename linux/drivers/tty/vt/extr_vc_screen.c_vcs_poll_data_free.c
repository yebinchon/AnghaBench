
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcs_poll_data {int notifier; } ;


 int kfree (struct vcs_poll_data*) ;
 int unregister_vt_notifier (int *) ;

__attribute__((used)) static void
vcs_poll_data_free(struct vcs_poll_data *poll)
{
 unregister_vt_notifier(&poll->notifier);
 kfree(poll);
}

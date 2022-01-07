
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int HZ ;
 int _enter (char*) ;
 int _leave (char*) ;
 int afs_mntpt_expiry_timeout ;
 int afs_mntpt_expiry_timer ;
 int afs_vfsmounts ;
 int afs_wq ;
 int list_empty (int *) ;
 int mark_mounts_for_expiry (int *) ;
 int queue_delayed_work (int ,int *,int) ;

__attribute__((used)) static void afs_mntpt_expiry_timed_out(struct work_struct *work)
{
 _enter("");

 if (!list_empty(&afs_vfsmounts)) {
  mark_mounts_for_expiry(&afs_vfsmounts);
  queue_delayed_work(afs_wq, &afs_mntpt_expiry_timer,
       afs_mntpt_expiry_timeout * HZ);
 }

 _leave("");
}

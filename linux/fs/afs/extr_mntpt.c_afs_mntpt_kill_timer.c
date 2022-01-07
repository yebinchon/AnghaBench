
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int _enter (char*) ;
 int afs_mntpt_expiry_timer ;
 int afs_vfsmounts ;
 int cancel_delayed_work_sync (int *) ;
 int list_empty (int *) ;

void afs_mntpt_kill_timer(void)
{
 _enter("");

 ASSERT(list_empty(&afs_vfsmounts));
 cancel_delayed_work_sync(&afs_mntpt_expiry_timer);
}

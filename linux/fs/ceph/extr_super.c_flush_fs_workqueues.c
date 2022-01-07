
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_fs_client {int cap_wq; int inode_wq; } ;


 int flush_workqueue (int ) ;

__attribute__((used)) static void flush_fs_workqueues(struct ceph_fs_client *fsc)
{
 flush_workqueue(fsc->inode_wq);
 flush_workqueue(fsc->cap_wq);
}

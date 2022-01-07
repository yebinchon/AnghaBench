
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_count; } ;
struct TYPE_4__ {int i_work; } ;
struct TYPE_3__ {int inode_wq; } ;


 scalar_t__ atomic_add_unless (int *,int,int) ;
 TYPE_2__* ceph_inode (struct inode*) ;
 TYPE_1__* ceph_inode_to_client (struct inode*) ;
 scalar_t__ queue_work (int ,int *) ;

void ceph_async_iput(struct inode *inode)
{
 if (!inode)
  return;
 for (;;) {
  if (atomic_add_unless(&inode->i_count, -1, 1))
   break;
  if (queue_work(ceph_inode_to_client(inode)->inode_wq,
          &ceph_inode(inode)->i_work))
   break;

 }
}

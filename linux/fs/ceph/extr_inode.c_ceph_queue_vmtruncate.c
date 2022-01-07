
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_inode_info {int i_work_mask; int i_work; } ;
struct TYPE_2__ {int inode_wq; } ;


 int CEPH_I_WORK_VMTRUNCATE ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 TYPE_1__* ceph_inode_to_client (struct inode*) ;
 int dout (char*,struct inode*,...) ;
 int ihold (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ queue_work (int ,int *) ;
 int set_bit (int ,int *) ;

void ceph_queue_vmtruncate(struct inode *inode)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 set_bit(CEPH_I_WORK_VMTRUNCATE, &ci->i_work_mask);

 ihold(inode);
 if (queue_work(ceph_inode_to_client(inode)->inode_wq,
         &ci->i_work)) {
  dout("ceph_queue_vmtruncate %p\n", inode);
 } else {
  dout("ceph_queue_vmtruncate %p already queued, mask=%lx\n",
       inode, ci->i_work_mask);
  iput(inode);
 }
}

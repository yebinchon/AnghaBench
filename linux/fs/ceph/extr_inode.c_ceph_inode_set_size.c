
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_blocks; int i_size; } ;
struct ceph_inode_info {int i_ceph_lock; } ;
typedef int loff_t ;


 int __ceph_should_report_size (struct ceph_inode_info*) ;
 int calc_inode_blocks (int ) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int dout (char*,struct inode*,int ,int ) ;
 int i_size_write (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool ceph_inode_set_size(struct inode *inode, loff_t size)
{
 struct ceph_inode_info *ci = ceph_inode(inode);
 bool ret;

 spin_lock(&ci->i_ceph_lock);
 dout("set_size %p %llu -> %llu\n", inode, inode->i_size, size);
 i_size_write(inode, size);
 inode->i_blocks = calc_inode_blocks(size);

 ret = __ceph_should_report_size(ci);

 spin_unlock(&ci->i_ceph_lock);
 return ret;
}

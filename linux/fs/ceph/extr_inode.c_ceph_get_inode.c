
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct inode {int i_state; scalar_t__ i_ino; } ;
struct ceph_vino {int snap; int ino; } ;
typedef int ino_t ;


 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
 int I_NEW ;
 int ceph_ino_compare ;
 int ceph_set_ino_cb ;
 int ceph_vino_to_ino (struct ceph_vino) ;
 int ceph_vinop (struct inode*) ;
 int dout (char*,struct inode*,int ,int ,...) ;
 struct inode* iget5_locked (struct super_block*,int ,int ,int ,struct ceph_vino*) ;
 int unlock_new_inode (struct inode*) ;

struct inode *ceph_get_inode(struct super_block *sb, struct ceph_vino vino)
{
 struct inode *inode;
 ino_t t = ceph_vino_to_ino(vino);

 inode = iget5_locked(sb, t, ceph_ino_compare, ceph_set_ino_cb, &vino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (inode->i_state & I_NEW) {
  dout("get_inode created new inode %p %llx.%llx ino %llx\n",
       inode, ceph_vinop(inode), (u64)inode->i_ino);
  unlock_new_inode(inode);
 }

 dout("get_inode on %lu=%llx.%llx got %p\n", inode->i_ino, vino.ino,
      vino.snap, inode);
 return inode;
}

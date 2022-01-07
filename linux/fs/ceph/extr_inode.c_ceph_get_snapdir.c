
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_fop; int * i_op; int i_gid; int i_uid; int i_mode; int i_sb; } ;
struct ceph_vino {int snap; int ino; } ;
struct ceph_inode_info {scalar_t__ i_rbytes; int i_snap_caps; } ;


 int BUG_ON (int) ;
 int CEPH_CAP_PIN ;
 int CEPH_SNAPDIR ;
 scalar_t__ IS_ERR (struct inode*) ;
 int S_ISDIR (int ) ;
 struct inode* ceph_get_inode (int ,struct ceph_vino) ;
 int ceph_ino (struct inode*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_snapdir_fops ;
 int ceph_snapdir_iops ;

struct inode *ceph_get_snapdir(struct inode *parent)
{
 struct ceph_vino vino = {
  .ino = ceph_ino(parent),
  .snap = CEPH_SNAPDIR,
 };
 struct inode *inode = ceph_get_inode(parent->i_sb, vino);
 struct ceph_inode_info *ci = ceph_inode(inode);

 BUG_ON(!S_ISDIR(parent->i_mode));
 if (IS_ERR(inode))
  return inode;
 inode->i_mode = parent->i_mode;
 inode->i_uid = parent->i_uid;
 inode->i_gid = parent->i_gid;
 inode->i_op = &ceph_snapdir_iops;
 inode->i_fop = &ceph_snapdir_fops;
 ci->i_snap_caps = CEPH_CAP_PIN;
 ci->i_rbytes = 0;
 return inode;
}

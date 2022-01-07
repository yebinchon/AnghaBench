
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {int hash; int len; int name; } ;
struct dentry {int d_lock; TYPE_2__ d_name; } ;
struct TYPE_3__ {int dl_dir_hash; } ;
struct ceph_inode_info {TYPE_1__ i_dir_layout; } ;



 struct ceph_inode_info* ceph_inode (struct inode*) ;
 unsigned int ceph_str_hash (int,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned ceph_dentry_hash(struct inode *dir, struct dentry *dn)
{
 struct ceph_inode_info *dci = ceph_inode(dir);
 unsigned hash;

 switch (dci->i_dir_layout.dl_dir_hash) {
 case 0:
 case 128:
  return dn->d_name.hash;

 default:
  spin_lock(&dn->d_lock);
  hash = ceph_str_hash(dci->i_dir_layout.dl_dir_hash,
         dn->d_name.name, dn->d_name.len);
  spin_unlock(&dn->d_lock);
  return hash;
 }
}

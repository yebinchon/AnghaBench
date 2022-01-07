
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_parent; } ;
struct TYPE_2__ {scalar_t__ snap; } ;
struct ceph_inode_info {int i_shared_gen; TYPE_1__ i_vino; } ;
struct ceph_dentry_info {scalar_t__ offset; scalar_t__ lease_shared_gen; } ;


 scalar_t__ CEPH_SNAPDIR ;
 scalar_t__ IS_ROOT (struct dentry*) ;
 int __ceph_dir_clear_complete (struct ceph_inode_info*) ;
 int __ceph_dir_clear_ordered (struct ceph_inode_info*) ;
 scalar_t__ atomic_read (int *) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry*) ;
 struct ceph_inode_info* ceph_inode (int ) ;
 int d_inode (int ) ;
 scalar_t__ d_really_is_negative (struct dentry*) ;
 int d_unhashed (struct dentry*) ;
 int dout (char*,struct dentry*,struct dentry*) ;

__attribute__((used)) static void ceph_d_prune(struct dentry *dentry)
{
 struct ceph_inode_info *dir_ci;
 struct ceph_dentry_info *di;

 dout("ceph_d_prune %pd %p\n", dentry, dentry);


 if (IS_ROOT(dentry))
  return;


 dir_ci = ceph_inode(d_inode(dentry->d_parent));
 if (dir_ci->i_vino.snap == CEPH_SNAPDIR)
  return;


 if (d_really_is_negative(dentry))
  return;


 if (!d_unhashed(dentry)) {
  __ceph_dir_clear_complete(dir_ci);
  return;
 }




 di = ceph_dentry(dentry);
 if (di->offset > 0 &&
     di->lease_shared_gen == atomic_read(&dir_ci->i_shared_gen))
  __ceph_dir_clear_ordered(dir_ci);
}

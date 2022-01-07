
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fid {scalar_t__ raw; } ;
struct dentry {int dummy; } ;
struct ceph_nfs_snapfh {int dummy; } ;
struct ceph_nfs_confh {int parent_ino; int ino; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 int FILEID_BTRFS_WITH_PARENT ;
 int FILEID_INO32_GEN_PARENT ;
 struct dentry* __fh_to_dentry (struct super_block*,int ) ;
 struct dentry* __get_parent (struct super_block*,int *,int ) ;
 struct dentry* __snapfh_to_dentry (struct super_block*,struct ceph_nfs_snapfh*,int) ;
 int dout (char*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dentry *ceph_fh_to_parent(struct super_block *sb,
     struct fid *fid,
     int fh_len, int fh_type)
{
 struct ceph_nfs_confh *cfh = (void *)fid->raw;
 struct dentry *dentry;

 if (fh_type == FILEID_BTRFS_WITH_PARENT) {
  struct ceph_nfs_snapfh *sfh = (void *)fid->raw;
  return __snapfh_to_dentry(sb, sfh, 1);
 }

 if (fh_type != FILEID_INO32_GEN_PARENT)
  return ((void*)0);
 if (fh_len < sizeof(*cfh) / 4)
  return ((void*)0);

 dout("fh_to_parent %llx\n", cfh->parent_ino);
 dentry = __get_parent(sb, ((void*)0), cfh->ino);
 if (unlikely(dentry == ERR_PTR(-ENOENT)))
  dentry = __fh_to_dentry(sb, cfh->parent_ino);
 return dentry;
}

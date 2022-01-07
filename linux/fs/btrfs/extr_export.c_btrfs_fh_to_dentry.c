
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct fid {int dummy; } ;
struct dentry {int dummy; } ;
struct btrfs_fid {int gen; int root_objectid; int objectid; } ;


 int BTRFS_FID_SIZE_CONNECTABLE ;
 int BTRFS_FID_SIZE_CONNECTABLE_ROOT ;
 int BTRFS_FID_SIZE_NON_CONNECTABLE ;
 int FILEID_BTRFS_WITHOUT_PARENT ;
 int FILEID_BTRFS_WITH_PARENT ;
 int FILEID_BTRFS_WITH_PARENT_ROOT ;
 struct dentry* btrfs_get_dentry (struct super_block*,int ,int ,int ,int) ;

__attribute__((used)) static struct dentry *btrfs_fh_to_dentry(struct super_block *sb, struct fid *fh,
      int fh_len, int fh_type)
{
 struct btrfs_fid *fid = (struct btrfs_fid *) fh;
 u64 objectid, root_objectid;
 u32 generation;

 if ((fh_type != FILEID_BTRFS_WITH_PARENT ||
      fh_len < BTRFS_FID_SIZE_CONNECTABLE) &&
     (fh_type != FILEID_BTRFS_WITH_PARENT_ROOT ||
      fh_len < BTRFS_FID_SIZE_CONNECTABLE_ROOT) &&
     (fh_type != FILEID_BTRFS_WITHOUT_PARENT ||
      fh_len < BTRFS_FID_SIZE_NON_CONNECTABLE))
  return ((void*)0);

 objectid = fid->objectid;
 root_objectid = fid->root_objectid;
 generation = fid->gen;

 return btrfs_get_dentry(sb, objectid, root_objectid, generation, 1);
}

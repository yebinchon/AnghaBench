
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct cramfs_sb_info* s_fs_info; } ;
struct fs_context {int dummy; } ;
struct cramfs_super {int root; } ;
struct cramfs_sb_info {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int READ_BUFFERS ;
 int* buffer_blocknr ;
 int cramfs_finalize_super (struct super_block*,int *) ;
 int cramfs_read_super (struct super_block*,struct fs_context*,struct cramfs_super*) ;
 struct cramfs_sb_info* kzalloc (int,int ) ;

__attribute__((used)) static int cramfs_blkdev_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct cramfs_sb_info *sbi;
 struct cramfs_super super;
 int i, err;

 sbi = kzalloc(sizeof(struct cramfs_sb_info), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;
 sb->s_fs_info = sbi;


 for (i = 0; i < READ_BUFFERS; i++)
  buffer_blocknr[i] = -1;

 err = cramfs_read_super(sb, fc, &super);
 if (err)
  return err;
 return cramfs_finalize_super(sb, &super.root);
}

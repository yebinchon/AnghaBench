
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_1__* s_mtd; struct cramfs_sb_info* s_fs_info; } ;
struct fs_context {int dummy; } ;
struct cramfs_super {int root; } ;
struct cramfs_sb_info {int mtd_point_size; int size; int linear_phys_addr; int linear_virt_addr; } ;
struct TYPE_3__ {int name; } ;


 int ENODATA ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int cramfs_finalize_super (struct super_block*,int *) ;
 int cramfs_read_super (struct super_block*,struct fs_context*,struct cramfs_super*) ;
 struct cramfs_sb_info* kzalloc (int,int ) ;
 int mtd_point (TYPE_1__*,int ,int,int*,int *,int *) ;
 int mtd_unpoint (TYPE_1__*,int ,int) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,...) ;

__attribute__((used)) static int cramfs_mtd_fill_super(struct super_block *sb, struct fs_context *fc)
{
 struct cramfs_sb_info *sbi;
 struct cramfs_super super;
 int err;

 sbi = kzalloc(sizeof(struct cramfs_sb_info), GFP_KERNEL);
 if (!sbi)
  return -ENOMEM;
 sb->s_fs_info = sbi;


 err = mtd_point(sb->s_mtd, 0, PAGE_SIZE, &sbi->mtd_point_size,
   &sbi->linear_virt_addr, &sbi->linear_phys_addr);
 if (err || sbi->mtd_point_size != PAGE_SIZE) {
  pr_err("unable to get direct memory access to mtd:%s\n",
         sb->s_mtd->name);
  return err ? : -ENODATA;
 }

 pr_info("checking physical address %pap for linear cramfs image\n",
  &sbi->linear_phys_addr);
 err = cramfs_read_super(sb, fc, &super);
 if (err)
  return err;


 pr_info("linear cramfs image on mtd:%s appears to be %lu KB in size\n",
  sb->s_mtd->name, sbi->size/1024);
 mtd_unpoint(sb->s_mtd, 0, PAGE_SIZE);
 err = mtd_point(sb->s_mtd, 0, sbi->size, &sbi->mtd_point_size,
   &sbi->linear_virt_addr, &sbi->linear_phys_addr);
 if (err || sbi->mtd_point_size != sbi->size) {
  pr_err("unable to get direct memory access to mtd:%s\n",
         sb->s_mtd->name);
  return err ? : -ENODATA;
 }

 return cramfs_finalize_super(sb, &super.root);
}

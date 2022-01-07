
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_descr {char* member_0; } ;
struct super_block {struct debugfs_fs_info* s_fs_info; int * s_d_op; int * s_op; } ;
struct debugfs_fs_info {int mount_opts; } ;


 int DEBUGFS_MAGIC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int debugfs_apply_options (struct super_block*) ;
 int debugfs_dops ;
 int debugfs_parse_options (void*,int *) ;
 int debugfs_super_operations ;
 int kfree (struct debugfs_fs_info*) ;
 struct debugfs_fs_info* kzalloc (int,int ) ;
 int simple_fill_super (struct super_block*,int ,struct tree_descr const*) ;

__attribute__((used)) static int debug_fill_super(struct super_block *sb, void *data, int silent)
{
 static const struct tree_descr debug_files[] = {{""}};
 struct debugfs_fs_info *fsi;
 int err;

 fsi = kzalloc(sizeof(struct debugfs_fs_info), GFP_KERNEL);
 sb->s_fs_info = fsi;
 if (!fsi) {
  err = -ENOMEM;
  goto fail;
 }

 err = debugfs_parse_options(data, &fsi->mount_opts);
 if (err)
  goto fail;

 err = simple_fill_super(sb, DEBUGFS_MAGIC, debug_files);
 if (err)
  goto fail;

 sb->s_op = &debugfs_super_operations;
 sb->s_d_op = &debugfs_dops;

 debugfs_apply_options(sb);

 return 0;

fail:
 kfree(fsi);
 sb->s_fs_info = ((void*)0);
 return err;
}

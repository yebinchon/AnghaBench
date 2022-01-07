
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dentry {int d_sb; } ;
struct befs_mount_options {scalar_t__ debug; scalar_t__ iocharset; int gid; int uid; } ;
struct befs_sb_info {struct befs_mount_options mount_opts; } ;


 struct befs_sb_info* BEFS_SB (int ) ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ from_kgid_munged (int *,int ) ;
 scalar_t__ from_kuid_munged (int *,int ) ;
 int gid_eq (int ,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;
 int uid_eq (int ,int ) ;

__attribute__((used)) static int befs_show_options(struct seq_file *m, struct dentry *root)
{
 struct befs_sb_info *befs_sb = BEFS_SB(root->d_sb);
 struct befs_mount_options *opts = &befs_sb->mount_opts;

 if (!uid_eq(opts->uid, GLOBAL_ROOT_UID))
  seq_printf(m, ",uid=%u",
      from_kuid_munged(&init_user_ns, opts->uid));
 if (!gid_eq(opts->gid, GLOBAL_ROOT_GID))
  seq_printf(m, ",gid=%u",
      from_kgid_munged(&init_user_ns, opts->gid));
 if (opts->iocharset)
  seq_printf(m, ",charset=%s", opts->iocharset);
 if (opts->debug)
  seq_puts(m, ",debug");
 return 0;
}

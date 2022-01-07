
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pts_mount_opts {scalar_t__ mode; scalar_t__ ptmxmode; scalar_t__ max; int gid; scalar_t__ setgid; int uid; scalar_t__ setuid; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; } ;
struct dentry {int d_sb; } ;


 struct pts_fs_info* DEVPTS_SB (int ) ;
 scalar_t__ NR_UNIX98_PTY_MAX ;
 scalar_t__ from_kgid_munged (int *,int ) ;
 scalar_t__ from_kuid_munged (int *,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static int devpts_show_options(struct seq_file *seq, struct dentry *root)
{
 struct pts_fs_info *fsi = DEVPTS_SB(root->d_sb);
 struct pts_mount_opts *opts = &fsi->mount_opts;

 if (opts->setuid)
  seq_printf(seq, ",uid=%u",
      from_kuid_munged(&init_user_ns, opts->uid));
 if (opts->setgid)
  seq_printf(seq, ",gid=%u",
      from_kgid_munged(&init_user_ns, opts->gid));
 seq_printf(seq, ",mode=%03o", opts->mode);
 seq_printf(seq, ",ptmxmode=%03o", opts->ptmxmode);
 if (opts->max < NR_UNIX98_PTY_MAX)
  seq_printf(seq, ",max=%d", opts->max);

 return 0;
}

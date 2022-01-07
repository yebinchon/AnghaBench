
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_magic; int s_active; } ;
struct pts_fs_info {int dummy; } ;
struct path {TYPE_1__* mnt; } ;
struct file {struct path f_path; } ;
struct TYPE_2__ {struct super_block* mnt_sb; } ;


 struct pts_fs_info* DEVPTS_SB (struct super_block*) ;
 scalar_t__ DEVPTS_SUPER_MAGIC ;
 struct pts_fs_info* ERR_PTR (int) ;
 int atomic_inc (int *) ;
 int devpts_ptmx_path (struct path*) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;

struct pts_fs_info *devpts_acquire(struct file *filp)
{
 struct pts_fs_info *result;
 struct path path;
 struct super_block *sb;

 path = filp->f_path;
 path_get(&path);


 if (path.mnt->mnt_sb->s_magic != DEVPTS_SUPER_MAGIC) {
  int err;

  err = devpts_ptmx_path(&path);
  if (err) {
   result = ERR_PTR(err);
   goto out;
  }
 }




 sb = path.mnt->mnt_sb;
 atomic_inc(&sb->s_active);
 result = DEVPTS_SB(sb);

out:
 path_put(&path);
 return result;
}

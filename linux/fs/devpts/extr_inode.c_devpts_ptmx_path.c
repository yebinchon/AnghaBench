
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_magic; scalar_t__ s_root; } ;
struct path {TYPE_1__* mnt; } ;
struct TYPE_2__ {scalar_t__ mnt_root; struct super_block* mnt_sb; } ;


 scalar_t__ DEVPTS_SUPER_MAGIC ;
 int ENODEV ;
 int path_pts (struct path*) ;

__attribute__((used)) static int devpts_ptmx_path(struct path *path)
{
 struct super_block *sb;
 int err;


 err = path_pts(path);
 if (err)
  return err;


 sb = path->mnt->mnt_sb;
 if ((sb->s_magic != DEVPTS_SUPER_MAGIC) ||
     (path->mnt->mnt_root != sb->s_root))
  return -ENODEV;

 return 0;
}

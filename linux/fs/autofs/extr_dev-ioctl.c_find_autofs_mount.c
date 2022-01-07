
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path {TYPE_2__* dentry; TYPE_3__* mnt; } ;
struct TYPE_6__ {TYPE_2__* mnt_root; } ;
struct TYPE_5__ {TYPE_1__* d_sb; } ;
struct TYPE_4__ {scalar_t__ s_magic; } ;


 int AT_FDCWD ;
 scalar_t__ AUTOFS_SUPER_MAGIC ;
 int ENOENT ;
 int follow_up (struct path*) ;
 int kern_path_mountpoint (int ,char const*,struct path*,int ) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;

__attribute__((used)) static int find_autofs_mount(const char *pathname,
        struct path *res,
        int test(const struct path *path, void *data),
        void *data)
{
 struct path path;
 int err;

 err = kern_path_mountpoint(AT_FDCWD, pathname, &path, 0);
 if (err)
  return err;
 err = -ENOENT;
 while (path.dentry == path.mnt->mnt_root) {
  if (path.dentry->d_sb->s_magic == AUTOFS_SUPER_MAGIC) {
   if (test(&path, data)) {
    path_get(&path);
    *res = path;
    err = 0;
    break;
   }
  }
  if (!follow_up(&path))
   break;
 }
 path_put(&path);
 return err;
}

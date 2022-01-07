
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; int d_parent; } ;


 scalar_t__ CEPH_NOSNAP ;
 scalar_t__ IS_ERR (char*) ;
 int PTR_ERR (char*) ;
 int ceph_ino (struct inode*) ;
 char* ceph_mdsc_build_path (struct dentry*,int*,int *,int) ;
 scalar_t__ ceph_snap (struct inode*) ;
 struct inode* d_inode_rcu (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int build_dentry_path(struct dentry *dentry, struct inode *dir,
        const char **ppath, int *ppathlen, u64 *pino,
        bool *pfreepath, bool parent_locked)
{
 char *path;

 rcu_read_lock();
 if (!dir)
  dir = d_inode_rcu(dentry->d_parent);
 if (dir && parent_locked && ceph_snap(dir) == CEPH_NOSNAP) {
  *pino = ceph_ino(dir);
  rcu_read_unlock();
  *ppath = dentry->d_name.name;
  *ppathlen = dentry->d_name.len;
  return 0;
 }
 rcu_read_unlock();
 path = ceph_mdsc_build_path(dentry, ppathlen, pino, 1);
 if (IS_ERR(path))
  return PTR_ERR(path);
 *ppath = path;
 *pfreepath = 1;
 return 0;
}

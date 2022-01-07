
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int name; } ;
struct dentry {int d_parent; int d_lock; TYPE_1__ d_name; } ;


 scalar_t__ CEPH_NOSNAP ;
 scalar_t__ CEPH_SNAPDIR ;
 int EINVAL ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 scalar_t__ IS_ROOT (struct dentry*) ;
 int PATH_MAX ;
 struct dentry* READ_ONCE (int ) ;
 char* __getname () ;
 int ceph_ino (struct inode*) ;
 scalar_t__ ceph_snap (struct inode*) ;
 int d_count (struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 int dout (char*,...) ;
 int memcpy (char*,int ,scalar_t__) ;
 int pr_err (char*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int rename_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

char *ceph_mdsc_build_path(struct dentry *dentry, int *plen, u64 *pbase,
      int stop_on_nosnap)
{
 struct dentry *temp;
 char *path;
 int pos;
 unsigned seq;
 u64 base;

 if (!dentry)
  return ERR_PTR(-EINVAL);

 path = __getname();
 if (!path)
  return ERR_PTR(-ENOMEM);
retry:
 pos = PATH_MAX - 1;
 path[pos] = '\0';

 seq = read_seqbegin(&rename_lock);
 rcu_read_lock();
 temp = dentry;
 for (;;) {
  struct inode *inode;

  spin_lock(&temp->d_lock);
  inode = d_inode(temp);
  if (inode && ceph_snap(inode) == CEPH_SNAPDIR) {
   dout("build_path path+%d: %p SNAPDIR\n",
        pos, temp);
  } else if (stop_on_nosnap && inode && dentry != temp &&
      ceph_snap(inode) == CEPH_NOSNAP) {
   spin_unlock(&temp->d_lock);
   pos++;
   break;
  } else {
   pos -= temp->d_name.len;
   if (pos < 0) {
    spin_unlock(&temp->d_lock);
    break;
   }
   memcpy(path + pos, temp->d_name.name, temp->d_name.len);
  }
  spin_unlock(&temp->d_lock);
  temp = READ_ONCE(temp->d_parent);


  if (IS_ROOT(temp))
   break;


  if (--pos < 0)
   break;

  path[pos] = '/';
 }
 base = ceph_ino(d_inode(temp));
 rcu_read_unlock();
 if (pos < 0 || read_seqretry(&rename_lock, seq)) {
  pr_err("build_path did not end path lookup where "
         "expected, pos is %d\n", pos);




  goto retry;
 }

 *pbase = base;
 *plen = PATH_MAX - 1 - pos;
 dout("build_path on %p %d built %llx '%.*s'\n",
      dentry, d_count(dentry), base, *plen, path + pos);
 return path + pos;
}

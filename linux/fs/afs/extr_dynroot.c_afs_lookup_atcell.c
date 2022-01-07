
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_parent; } ;
struct afs_net {int cells_lock; int ws_cell; } ;
struct afs_cell {int name_len; int name; } ;


 scalar_t__ AFS_MAXCELLNAME ;
 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct afs_net* afs_d2net (struct dentry*) ;
 int done_seqretry (int *,unsigned int) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 struct dentry* lookup_one_len (char*,int ,int) ;
 int memcpy (char*,int ,int) ;
 scalar_t__ need_seqretry (int *,unsigned int) ;
 struct afs_cell* rcu_dereference_raw (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int read_seqbegin_or_lock (int *,unsigned int*) ;

__attribute__((used)) static struct dentry *afs_lookup_atcell(struct dentry *dentry)
{
 struct afs_cell *cell;
 struct afs_net *net = afs_d2net(dentry);
 struct dentry *ret;
 unsigned int seq = 0;
 char *name;
 int len;

 if (!net->ws_cell)
  return ERR_PTR(-ENOENT);

 ret = ERR_PTR(-ENOMEM);
 name = kmalloc(AFS_MAXCELLNAME + 1, GFP_KERNEL);
 if (!name)
  goto out_p;

 rcu_read_lock();
 do {
  read_seqbegin_or_lock(&net->cells_lock, &seq);
  cell = rcu_dereference_raw(net->ws_cell);
  if (cell) {
   len = cell->name_len;
   memcpy(name, cell->name, len + 1);
  }
 } while (need_seqretry(&net->cells_lock, seq));
 done_seqretry(&net->cells_lock, seq);
 rcu_read_unlock();

 ret = ERR_PTR(-ENOENT);
 if (!cell)
  goto out_n;

 ret = lookup_one_len(name, dentry->d_parent, len);





out_n:
 kfree(name);
out_p:
 return ret;
}

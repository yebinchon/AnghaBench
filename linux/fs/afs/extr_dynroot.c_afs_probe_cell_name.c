
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; size_t len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct afs_net {int net; } ;
struct afs_cell {int dummy; } ;


 int EDESTADDRREQ ;
 int EINVAL ;
 int ENODATA ;
 int IS_ERR (struct afs_cell*) ;
 struct afs_net* afs_d2net (struct dentry*) ;
 struct afs_cell* afs_lookup_cell_rcu (struct afs_net*,char const*,size_t) ;
 int afs_put_cell (struct afs_net*,struct afs_cell*) ;
 int dns_query (int ,char*,char const*,size_t,char*,int *,int *,int) ;

__attribute__((used)) static int afs_probe_cell_name(struct dentry *dentry)
{
 struct afs_cell *cell;
 struct afs_net *net = afs_d2net(dentry);
 const char *name = dentry->d_name.name;
 size_t len = dentry->d_name.len;
 int ret;


 if (name[0] == '.') {
  if (len == 1)
   return -EINVAL;
  name++;
  len--;
 }

 cell = afs_lookup_cell_rcu(net, name, len);
 if (!IS_ERR(cell)) {
  afs_put_cell(net, cell);
  return 0;
 }

 ret = dns_query(net->net, "afsdb", name, len, "srv=1",
   ((void*)0), ((void*)0), 0);
 if (ret == -ENODATA)
  ret = -EDESTADDRREQ;
 return ret;
}

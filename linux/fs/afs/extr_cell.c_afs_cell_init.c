
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_net {int cells_lock; int ws_cell; } ;
struct afs_cell {int flags; } ;


 int AFS_CELL_FL_NO_GC ;
 scalar_t__ IS_ERR (struct afs_cell*) ;
 int PTR_ERR (struct afs_cell*) ;
 int _debug (char*) ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int afs_get_cell (struct afs_cell*) ;
 struct afs_cell* afs_lookup_cell (struct afs_net*,char const*,size_t,char const*,int) ;
 int afs_put_cell (struct afs_net*,struct afs_cell*) ;
 struct afs_cell* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct afs_cell*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int test_and_set_bit (int ,int *) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;

int afs_cell_init(struct afs_net *net, const char *rootcell)
{
 struct afs_cell *old_root, *new_root;
 const char *cp, *vllist;
 size_t len;

 _enter("");

 if (!rootcell) {



  _leave(" = 0 [no root]");
  return 0;
 }

 cp = strchr(rootcell, ':');
 if (!cp) {
  _debug("kAFS: no VL server IP addresses specified");
  vllist = ((void*)0);
  len = strlen(rootcell);
 } else {
  vllist = cp + 1;
  len = cp - rootcell;
 }


 new_root = afs_lookup_cell(net, rootcell, len, vllist, 0);
 if (IS_ERR(new_root)) {
  _leave(" = %ld", PTR_ERR(new_root));
  return PTR_ERR(new_root);
 }

 if (!test_and_set_bit(AFS_CELL_FL_NO_GC, &new_root->flags))
  afs_get_cell(new_root);


 write_seqlock(&net->cells_lock);
 old_root = rcu_access_pointer(net->ws_cell);
 rcu_assign_pointer(net->ws_cell, new_root);
 write_sequnlock(&net->cells_lock);

 afs_put_cell(net, old_root);
 _leave(" = 0");
 return 0;
}

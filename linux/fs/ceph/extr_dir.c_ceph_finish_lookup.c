
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct ceph_mds_request {struct dentry* r_dentry; TYPE_2__ r_reply_info; } ;
struct TYPE_3__ {int is_dentry; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 int d_add (struct dentry*,int *) ;
 int d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_really_is_positive (struct dentry*) ;
 struct dentry* dget (struct dentry*) ;
 int dout (char*,struct dentry*,int ) ;

struct dentry *ceph_finish_lookup(struct ceph_mds_request *req,
      struct dentry *dentry, int err)
{
 if (err == -ENOENT) {

  err = 0;
  if (!req->r_reply_info.head->is_dentry) {
   dout("ENOENT and no trace, dentry %p inode %p\n",
        dentry, d_inode(dentry));
   if (d_really_is_positive(dentry)) {
    d_drop(dentry);
    err = -ENOENT;
   } else {
    d_add(dentry, ((void*)0));
   }
  }
 }
 if (err)
  dentry = ERR_PTR(err);
 else if (dentry != req->r_dentry)
  dentry = dget(req->r_dentry);
 else
  dentry = ((void*)0);
 return dentry;
}

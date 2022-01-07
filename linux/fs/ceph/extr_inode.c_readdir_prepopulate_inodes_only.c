
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_vino {void* snap; void* ino; } ;
struct ceph_mds_session {int dummy; } ;
struct ceph_mds_reply_info_parsed {int dir_nr; struct ceph_mds_reply_dir_entry* dir_entries; } ;
struct ceph_mds_request {int r_caps_reservation; int r_request_started; TYPE_2__* r_dentry; struct ceph_mds_reply_info_parsed r_reply_info; } ;
struct TYPE_6__ {TYPE_1__* in; } ;
struct ceph_mds_reply_dir_entry {TYPE_3__ inode; } ;
struct TYPE_5__ {int d_sb; } ;
struct TYPE_4__ {int snapid; int ino; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int ceph_async_iput (struct inode*) ;
 struct inode* ceph_get_inode (int ,struct ceph_vino) ;
 int dout (char*,int) ;
 int fill_inode (struct inode*,int *,TYPE_3__*,int *,struct ceph_mds_session*,int ,int,int *) ;
 void* le64_to_cpu (int ) ;
 int pr_err (char*,struct inode*,int) ;

__attribute__((used)) static int readdir_prepopulate_inodes_only(struct ceph_mds_request *req,
        struct ceph_mds_session *session)
{
 struct ceph_mds_reply_info_parsed *rinfo = &req->r_reply_info;
 int i, err = 0;

 for (i = 0; i < rinfo->dir_nr; i++) {
  struct ceph_mds_reply_dir_entry *rde = rinfo->dir_entries + i;
  struct ceph_vino vino;
  struct inode *in;
  int rc;

  vino.ino = le64_to_cpu(rde->inode.in->ino);
  vino.snap = le64_to_cpu(rde->inode.in->snapid);

  in = ceph_get_inode(req->r_dentry->d_sb, vino);
  if (IS_ERR(in)) {
   err = PTR_ERR(in);
   dout("new_inode badness got %d\n", err);
   continue;
  }
  rc = fill_inode(in, ((void*)0), &rde->inode, ((void*)0), session,
    req->r_request_started, -1,
    &req->r_caps_reservation);
  if (rc < 0) {
   pr_err("fill_inode badness on %p got %d\n", in, rc);
   err = rc;
  }

  ceph_async_iput(in);
 }

 return err;
}

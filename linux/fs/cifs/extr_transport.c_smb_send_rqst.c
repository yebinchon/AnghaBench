
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tr_hdr ;
struct smb_rqst {int iov_len; int rq_nvec; struct smb_rqst* rq_iov; struct smb_rqst* iov_base; } ;
struct smb2_transform_hdr {int iov_len; int rq_nvec; struct smb2_transform_hdr* rq_iov; struct smb2_transform_hdr* iov_base; } ;
struct kvec {int iov_len; int rq_nvec; struct kvec* rq_iov; struct kvec* iov_base; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
typedef int iov ;
typedef int cur_rqst ;
struct TYPE_2__ {int (* init_transform_rq ) (struct TCP_Server_Info*,int,struct smb_rqst*,struct smb_rqst*) ;} ;


 int CIFS_TRANSFORM_REQ ;
 int EIO ;
 int ENOMEM ;
 int MAX_COMPOUND ;
 int VFS ;
 int __smb_send_rqst (struct TCP_Server_Info*,int,struct smb_rqst*) ;
 int cifs_server_dbg (int ,char*) ;
 int memset (struct smb_rqst*,int ,int) ;
 int smb3_free_compound_rqst (int,struct smb_rqst*) ;
 int stub1 (struct TCP_Server_Info*,int,struct smb_rqst*,struct smb_rqst*) ;

__attribute__((used)) static int
smb_send_rqst(struct TCP_Server_Info *server, int num_rqst,
       struct smb_rqst *rqst, int flags)
{
 struct kvec iov;
 struct smb2_transform_hdr tr_hdr;
 struct smb_rqst cur_rqst[MAX_COMPOUND];
 int rc;

 if (!(flags & CIFS_TRANSFORM_REQ))
  return __smb_send_rqst(server, num_rqst, rqst);

 if (num_rqst > MAX_COMPOUND - 1)
  return -ENOMEM;

 memset(&cur_rqst[0], 0, sizeof(cur_rqst));
 memset(&iov, 0, sizeof(iov));
 memset(&tr_hdr, 0, sizeof(tr_hdr));

 iov.iov_base = &tr_hdr;
 iov.iov_len = sizeof(tr_hdr);
 cur_rqst[0].rq_iov = &iov;
 cur_rqst[0].rq_nvec = 1;

 if (!server->ops->init_transform_rq) {
  cifs_server_dbg(VFS, "Encryption requested but transform "
    "callback is missing\n");
  return -EIO;
 }

 rc = server->ops->init_transform_rq(server, num_rqst + 1,
         &cur_rqst[0], rqst);
 if (rc)
  return rc;

 rc = __smb_send_rqst(server, num_rqst + 1, &cur_rqst[0]);
 smb3_free_compound_rqst(num_rqst, &cur_rqst[1]);
 return rc;
}

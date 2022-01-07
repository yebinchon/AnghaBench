
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct smb_rqst {struct kvec* rq_iov; } ;
struct smb2_close_req {void* VolatileFileId; void* PersistentFileId; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_tcon {int dummy; } ;


 int SMB2_CLOSE ;
 int smb2_plain_req_init (int ,struct cifs_tcon*,void**,unsigned int*) ;

int
SMB2_close_init(struct cifs_tcon *tcon, struct smb_rqst *rqst,
  u64 persistent_fid, u64 volatile_fid)
{
 struct smb2_close_req *req;
 struct kvec *iov = rqst->rq_iov;
 unsigned int total_len;
 int rc;

 rc = smb2_plain_req_init(SMB2_CLOSE, tcon, (void **) &req, &total_len);
 if (rc)
  return rc;

 req->PersistentFileId = persistent_fid;
 req->VolatileFileId = volatile_fid;
 iov[0].iov_base = (char *)req;
 iov[0].iov_len = total_len;

 return 0;
}

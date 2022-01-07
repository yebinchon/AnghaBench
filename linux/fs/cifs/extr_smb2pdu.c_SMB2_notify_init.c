
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
typedef scalar_t__ u32 ;
struct smb_rqst {struct kvec* rq_iov; } ;
struct smb2_change_notify_req {scalar_t__ Flags; void* CompletionFilter; void* OutputBufferLength; void* VolatileFileId; void* PersistentFileId; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_tcon {int dummy; } ;


 scalar_t__ MAX_SMB2_HDR_SIZE ;
 int SMB2_CHANGE_NOTIFY ;
 scalar_t__ SMB2_MAX_BUFFER_SIZE ;
 int SMB2_WATCH_TREE ;
 scalar_t__ cpu_to_le16 (int ) ;
 void* cpu_to_le32 (scalar_t__) ;
 int smb2_plain_req_init (int ,struct cifs_tcon*,void**,unsigned int*) ;

__attribute__((used)) static int
SMB2_notify_init(const unsigned int xid, struct smb_rqst *rqst,
  struct cifs_tcon *tcon, u64 persistent_fid, u64 volatile_fid,
  u32 completion_filter, bool watch_tree)
{
 struct smb2_change_notify_req *req;
 struct kvec *iov = rqst->rq_iov;
 unsigned int total_len;
 int rc;

 rc = smb2_plain_req_init(SMB2_CHANGE_NOTIFY, tcon, (void **) &req, &total_len);
 if (rc)
  return rc;

 req->PersistentFileId = persistent_fid;
 req->VolatileFileId = volatile_fid;
 req->OutputBufferLength =
  cpu_to_le32(SMB2_MAX_BUFFER_SIZE - MAX_SMB2_HDR_SIZE);
 req->CompletionFilter = cpu_to_le32(completion_filter);
 if (watch_tree)
  req->Flags = cpu_to_le16(SMB2_WATCH_TREE);
 else
  req->Flags = 0;

 iov[0].iov_base = (char *)req;
 iov[0].iov_len = total_len;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct smb2_query_info_rsp {int dummy; } ;
struct smb2_query_info_req {int FileInfoClass; int OutputBufferLength; int InputBufferOffset; void* VolatileFileId; void* PersistentFileId; int InfoType; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct TYPE_2__ {int * server; } ;


 int EIO ;
 int FYI ;
 int SMB2_O_INFO_FILESYSTEM ;
 int SMB2_QUERY_INFO ;
 int cifs_dbg (int ,char*,int) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int smb2_plain_req_init (int ,struct cifs_tcon*,void**,unsigned int*) ;

__attribute__((used)) static int
build_qfs_info_req(struct kvec *iov, struct cifs_tcon *tcon, int level,
     int outbuf_len, u64 persistent_fid, u64 volatile_fid)
{
 int rc;
 struct smb2_query_info_req *req;
 unsigned int total_len;

 cifs_dbg(FYI, "Query FSInfo level %d\n", level);

 if ((tcon->ses == ((void*)0)) || (tcon->ses->server == ((void*)0)))
  return -EIO;

 rc = smb2_plain_req_init(SMB2_QUERY_INFO, tcon, (void **) &req,
        &total_len);
 if (rc)
  return rc;

 req->InfoType = SMB2_O_INFO_FILESYSTEM;
 req->FileInfoClass = level;
 req->PersistentFileId = persistent_fid;
 req->VolatileFileId = volatile_fid;

 req->InputBufferOffset =
   cpu_to_le16(sizeof(struct smb2_query_info_req) - 1);
 req->OutputBufferLength = cpu_to_le32(
  outbuf_len + sizeof(struct smb2_query_info_rsp) - 1);

 iov->iov_base = (char *)req;
 iov->iov_len = total_len;
 return 0;
}

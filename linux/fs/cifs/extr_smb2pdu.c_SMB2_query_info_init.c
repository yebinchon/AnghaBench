
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef void* u64 ;
typedef size_t u32 ;
struct smb_rqst {struct kvec* rq_iov; } ;
struct smb2_query_info_req {int Buffer; int InputBufferOffset; void* InputBufferLength; void* OutputBufferLength; void* AdditionalInformation; void* VolatileFileId; void* PersistentFileId; void* FileInfoClass; void* InfoType; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_tcon {int dummy; } ;


 int SMB2_QUERY_INFO ;
 int cpu_to_le16 (unsigned int) ;
 void* cpu_to_le32 (size_t) ;
 int memcpy (int ,void*,size_t) ;
 int smb2_plain_req_init (int ,struct cifs_tcon*,void**,unsigned int*) ;

int
SMB2_query_info_init(struct cifs_tcon *tcon, struct smb_rqst *rqst,
       u64 persistent_fid, u64 volatile_fid,
       u8 info_class, u8 info_type, u32 additional_info,
       size_t output_len, size_t input_len, void *input)
{
 struct smb2_query_info_req *req;
 struct kvec *iov = rqst->rq_iov;
 unsigned int total_len;
 int rc;

 rc = smb2_plain_req_init(SMB2_QUERY_INFO, tcon, (void **) &req,
        &total_len);
 if (rc)
  return rc;

 req->InfoType = info_type;
 req->FileInfoClass = info_class;
 req->PersistentFileId = persistent_fid;
 req->VolatileFileId = volatile_fid;
 req->AdditionalInformation = cpu_to_le32(additional_info);

 req->OutputBufferLength = cpu_to_le32(output_len);
 if (input_len) {
  req->InputBufferLength = cpu_to_le32(input_len);

  req->InputBufferOffset = cpu_to_le16(total_len - 1);
  memcpy(req->Buffer, input, input_len);
 }

 iov[0].iov_base = (char *)req;

 iov[0].iov_len = total_len - 1 + input_len;
 return 0;
}

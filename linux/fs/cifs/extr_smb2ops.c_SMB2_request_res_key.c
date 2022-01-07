
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct resume_key_req {int ResumeKey; } ;
struct copychunk_ioctl {int SourceKey; } ;
struct cifs_tcon {int dummy; } ;


 int CIFSMaxBufSize ;
 int COPY_CHUNK_RES_KEY_SIZE ;
 int EINVAL ;
 int FSCTL_SRV_REQUEST_RESUME_KEY ;
 int SMB2_ioctl (unsigned int const,struct cifs_tcon*,int ,int ,int ,int,int *,int ,int ,char**,unsigned int*) ;
 int VFS ;
 int cifs_tcon_dbg (int ,char*,...) ;
 int kfree (struct resume_key_req*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int
SMB2_request_res_key(const unsigned int xid, struct cifs_tcon *tcon,
       u64 persistent_fid, u64 volatile_fid,
       struct copychunk_ioctl *pcchunk)
{
 int rc;
 unsigned int ret_data_len;
 struct resume_key_req *res_key;

 rc = SMB2_ioctl(xid, tcon, persistent_fid, volatile_fid,
   FSCTL_SRV_REQUEST_RESUME_KEY, 1 ,
   ((void*)0), 0 , CIFSMaxBufSize,
   (char **)&res_key, &ret_data_len);

 if (rc) {
  cifs_tcon_dbg(VFS, "refcpy ioctl error %d getting resume key\n", rc);
  goto req_res_key_exit;
 }
 if (ret_data_len < sizeof(struct resume_key_req)) {
  cifs_tcon_dbg(VFS, "Invalid refcopy resume key length\n");
  rc = -EINVAL;
  goto req_res_key_exit;
 }
 memcpy(pcchunk->SourceKey, res_key->ResumeKey, COPY_CHUNK_RES_KEY_SIZE);

req_res_key_exit:
 kfree(res_key);
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct smb_hdr {int Uid; int WordCount; int Flags2; } ;
struct sess_data {int result; int * func; int nls_cp; TYPE_2__* iov; struct cifs_ses* ses; } ;
struct TYPE_9__ {unsigned char* response; } ;
struct cifs_ses {int Suid; unsigned char* ntlmssp; TYPE_4__ auth_key; } ;
typedef int __u16 ;
struct TYPE_8__ {int SecurityBlobLength; int Action; } ;
struct TYPE_6__ {int SecurityBlobLength; } ;
struct TYPE_10__ {TYPE_3__ resp; TYPE_1__ req; } ;
struct TYPE_7__ {unsigned char* iov_base; int iov_len; } ;
typedef TYPE_5__ SESSION_SETUP_ANDX ;


 int EINVAL ;
 int EIO ;
 int FYI ;
 int GUEST_LOGIN ;
 int SMBFLG2_UNICODE ;
 int VFS ;
 int _sess_auth_rawntlmssp_assemble_req (struct sess_data*) ;
 int build_ntlmssp_auth_blob (unsigned char**,int*,struct cifs_ses*,int ) ;
 int cifs_dbg (int ,char*,...) ;
 int cpu_to_le16 (int) ;
 int decode_ascii_ssetup (char**,int,struct cifs_ses*,int ) ;
 int decode_unicode_ssetup (char**,int,struct cifs_ses*,int ) ;
 int get_bcc (struct smb_hdr*) ;
 int kfree (unsigned char*) ;
 int le16_to_cpu (int ) ;
 char* pByteArea (struct smb_hdr*) ;
 int sess_alloc_buffer (struct sess_data*,int) ;
 int sess_establish_session (struct sess_data*) ;
 int sess_free_buffer (struct sess_data*) ;
 int sess_sendreceive (struct sess_data*) ;

__attribute__((used)) static void
sess_auth_rawntlmssp_authenticate(struct sess_data *sess_data)
{
 int rc;
 struct smb_hdr *smb_buf;
 SESSION_SETUP_ANDX *pSMB;
 struct cifs_ses *ses = sess_data->ses;
 __u16 bytes_remaining;
 char *bcc_ptr;
 unsigned char *ntlmsspblob = ((void*)0);
 u16 blob_len;

 cifs_dbg(FYI, "rawntlmssp session setup authenticate phase\n");


 rc = sess_alloc_buffer(sess_data, 12);
 if (rc)
  goto out;


 pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;
 smb_buf = (struct smb_hdr *)pSMB;
 rc = build_ntlmssp_auth_blob(&ntlmsspblob,
     &blob_len, ses, sess_data->nls_cp);
 if (rc)
  goto out_free_ntlmsspblob;
 sess_data->iov[1].iov_len = blob_len;
 sess_data->iov[1].iov_base = ntlmsspblob;
 pSMB->req.SecurityBlobLength = cpu_to_le16(blob_len);





 smb_buf->Uid = ses->Suid;

 rc = _sess_auth_rawntlmssp_assemble_req(sess_data);
 if (rc)
  goto out_free_ntlmsspblob;

 rc = sess_sendreceive(sess_data);
 if (rc)
  goto out_free_ntlmsspblob;

 pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;
 smb_buf = (struct smb_hdr *)sess_data->iov[0].iov_base;
 if (smb_buf->WordCount != 4) {
  rc = -EIO;
  cifs_dbg(VFS, "bad word count %d\n", smb_buf->WordCount);
  goto out_free_ntlmsspblob;
 }

 if (le16_to_cpu(pSMB->resp.Action) & GUEST_LOGIN)
  cifs_dbg(FYI, "Guest login\n");

 if (ses->Suid != smb_buf->Uid) {
  ses->Suid = smb_buf->Uid;
  cifs_dbg(FYI, "UID changed! new UID = %llu\n", ses->Suid);
 }

 bytes_remaining = get_bcc(smb_buf);
 bcc_ptr = pByteArea(smb_buf);
 blob_len = le16_to_cpu(pSMB->resp.SecurityBlobLength);
 if (blob_len > bytes_remaining) {
  cifs_dbg(VFS, "bad security blob length %d\n",
    blob_len);
  rc = -EINVAL;
  goto out_free_ntlmsspblob;
 }
 bcc_ptr += blob_len;
 bytes_remaining -= blob_len;



 if (bytes_remaining == 0) {

 } else if (smb_buf->Flags2 & SMBFLG2_UNICODE) {

  if (((unsigned long) bcc_ptr - (unsigned long) smb_buf) % 2) {
   ++bcc_ptr;
   --bytes_remaining;
  }
  decode_unicode_ssetup(&bcc_ptr, bytes_remaining, ses,
          sess_data->nls_cp);
 } else {
  decode_ascii_ssetup(&bcc_ptr, bytes_remaining, ses,
        sess_data->nls_cp);
 }

out_free_ntlmsspblob:
 kfree(ntlmsspblob);
out:
 sess_free_buffer(sess_data);

  if (!rc)
  rc = sess_establish_session(sess_data);


 kfree(ses->auth_key.response);
 ses->auth_key.response = ((void*)0);
 kfree(ses->ntlmssp);
 ses->ntlmssp = ((void*)0);

 sess_data->func = ((void*)0);
 sess_data->result = rc;
}

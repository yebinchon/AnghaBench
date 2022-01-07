
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct validate_negotiate_info_rsp {scalar_t__ SecurityMode; scalar_t__ Dialect; int Capabilities; scalar_t__ DialectCount; scalar_t__* Dialects; int Guid; } ;
struct validate_negotiate_info_req {scalar_t__ SecurityMode; scalar_t__ Dialect; int Capabilities; scalar_t__ DialectCount; scalar_t__* Dialects; int Guid; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct TCP_Server_Info {int dialect; int sec_mode; int capabilities; TYPE_2__* vals; int client_guid; } ;
struct TYPE_4__ {int protocol_id; int version_string; int req_capabilities; } ;
struct TYPE_3__ {int session_flags; scalar_t__ sign; int * user_name; struct TCP_Server_Info* server; } ;


 int CIFSMaxBufSize ;
 int CIFSSEC_MAY_SIGN ;
 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int FSCTL_VALIDATE_NEGOTIATE_INFO ;
 int FYI ;
 int GFP_NOFS ;
 int NO_FILE_ID ;
 int SMB21_PROT_ID ;
 int SMB2_CLIENT_GUID_SIZE ;
 int SMB2_LARGE_FILES ;
 int SMB2_NEGOTIATE_SIGNING_ENABLED ;
 int SMB2_NEGOTIATE_SIGNING_REQUIRED ;
 int SMB2_NT_FIND ;
 int SMB2_SESSION_FLAG_IS_GUEST ;
 int SMB2_SESSION_FLAG_IS_NULL ;
 int SMB2_ioctl (unsigned int const,struct cifs_tcon*,int ,int ,int ,int,char*,int,int,char**,int*) ;
 int SMB302_PROT_ID ;
 int SMB30_PROT_ID ;
 int SMB311_PROT_ID ;
 int SMB3ANY_VERSION_STRING ;
 int SMBDEFAULT_VERSION_STRING ;
 int VFS ;
 int cifs_dbg (int ,char*) ;
 int cifs_tcon_dbg (int ,char*,...) ;
 scalar_t__ cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int global_secflags ;
 int kfree (struct validate_negotiate_info_rsp*) ;
 struct validate_negotiate_info_rsp* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;

int smb3_validate_negotiate(const unsigned int xid, struct cifs_tcon *tcon)
{
 int rc;
 struct validate_negotiate_info_req *pneg_inbuf;
 struct validate_negotiate_info_rsp *pneg_rsp = ((void*)0);
 u32 rsplen;
 u32 inbuflen;
 struct TCP_Server_Info *server = tcon->ses->server;

 cifs_dbg(FYI, "validate negotiate\n");


 if (server->dialect == SMB311_PROT_ID)
  return 0;
 if (tcon->ses->session_flags & SMB2_SESSION_FLAG_IS_GUEST)
  return 0;

 if (tcon->ses->user_name == ((void*)0)) {
  cifs_dbg(FYI, "Can't validate negotiate: null user mount\n");
  return 0;
 }

 if (tcon->ses->session_flags & SMB2_SESSION_FLAG_IS_NULL)
  cifs_tcon_dbg(VFS, "Unexpected null user (anonymous) auth flag sent by server\n");

 pneg_inbuf = kmalloc(sizeof(*pneg_inbuf), GFP_NOFS);
 if (!pneg_inbuf)
  return -ENOMEM;

 pneg_inbuf->Capabilities =
   cpu_to_le32(server->vals->req_capabilities);
 memcpy(pneg_inbuf->Guid, server->client_guid,
     SMB2_CLIENT_GUID_SIZE);

 if (tcon->ses->sign)
  pneg_inbuf->SecurityMode =
   cpu_to_le16(SMB2_NEGOTIATE_SIGNING_REQUIRED);
 else if (global_secflags & CIFSSEC_MAY_SIGN)
  pneg_inbuf->SecurityMode =
   cpu_to_le16(SMB2_NEGOTIATE_SIGNING_ENABLED);
 else
  pneg_inbuf->SecurityMode = 0;


 if (strcmp(server->vals->version_string,
  SMB3ANY_VERSION_STRING) == 0) {
  pneg_inbuf->Dialects[0] = cpu_to_le16(SMB30_PROT_ID);
  pneg_inbuf->Dialects[1] = cpu_to_le16(SMB302_PROT_ID);
  pneg_inbuf->DialectCount = cpu_to_le16(2);

  inbuflen = sizeof(*pneg_inbuf) -
    (2 * sizeof(pneg_inbuf->Dialects[0]));
 } else if (strcmp(server->vals->version_string,
  SMBDEFAULT_VERSION_STRING) == 0) {
  pneg_inbuf->Dialects[0] = cpu_to_le16(SMB21_PROT_ID);
  pneg_inbuf->Dialects[1] = cpu_to_le16(SMB30_PROT_ID);
  pneg_inbuf->Dialects[2] = cpu_to_le16(SMB302_PROT_ID);
  pneg_inbuf->Dialects[3] = cpu_to_le16(SMB311_PROT_ID);
  pneg_inbuf->DialectCount = cpu_to_le16(4);

  inbuflen = sizeof(*pneg_inbuf);
 } else {

  pneg_inbuf->Dialects[0] =
   cpu_to_le16(server->vals->protocol_id);
  pneg_inbuf->DialectCount = cpu_to_le16(1);

  inbuflen = sizeof(*pneg_inbuf) -
    sizeof(pneg_inbuf->Dialects[0]) * 2;
 }

 rc = SMB2_ioctl(xid, tcon, NO_FILE_ID, NO_FILE_ID,
  FSCTL_VALIDATE_NEGOTIATE_INFO, 1 ,
  (char *)pneg_inbuf, inbuflen, CIFSMaxBufSize,
  (char **)&pneg_rsp, &rsplen);
 if (rc == -EOPNOTSUPP) {




  cifs_tcon_dbg(VFS, "Server does not support validate negotiate\n");
  rc = 0;
  goto out_free_inbuf;
 } else if (rc != 0) {
  cifs_tcon_dbg(VFS, "validate protocol negotiate failed: %d\n", rc);
  rc = -EIO;
  goto out_free_inbuf;
 }

 rc = -EIO;
 if (rsplen != sizeof(*pneg_rsp)) {
  cifs_tcon_dbg(VFS, "invalid protocol negotiate response size: %d\n",
    rsplen);


  if (rsplen > CIFSMaxBufSize || rsplen < sizeof(*pneg_rsp))
   goto out_free_rsp;
 }


 if (pneg_rsp->Dialect != cpu_to_le16(server->dialect))
  goto vneg_out;

 if (pneg_rsp->SecurityMode != cpu_to_le16(server->sec_mode))
  goto vneg_out;



 if ((le32_to_cpu(pneg_rsp->Capabilities) | SMB2_NT_FIND |
       SMB2_LARGE_FILES) != server->capabilities)
  goto vneg_out;


 rc = 0;
 cifs_dbg(FYI, "validate negotiate info successful\n");
 goto out_free_rsp;

vneg_out:
 cifs_tcon_dbg(VFS, "protocol revalidation - security settings mismatch\n");
out_free_rsp:
 kfree(pneg_rsp);
out_free_inbuf:
 kfree(pneg_inbuf);
 return rc;
}

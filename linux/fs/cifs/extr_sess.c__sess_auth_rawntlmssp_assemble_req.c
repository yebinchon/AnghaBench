
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sess_data {TYPE_3__* iov; int nls_cp; struct cifs_ses* ses; } ;
struct cifs_ses {int dummy; } ;
typedef int __u32 ;
struct TYPE_6__ {int Flags2; } ;
struct TYPE_7__ {int Capabilities; TYPE_1__ hdr; } ;
struct TYPE_9__ {TYPE_2__ req; } ;
struct TYPE_8__ {char* iov_base; int iov_len; } ;
typedef TYPE_4__ SESSION_SETUP_ANDX ;


 int CAP_EXTENDED_SECURITY ;
 int ENOSYS ;
 int SMBFLG2_EXT_SEC ;
 int SMBFLG2_UNICODE ;
 int VFS ;
 int cifs_dbg (int ,char*) ;
 int cifs_ssetup_hdr (struct cifs_ses*,TYPE_4__*) ;
 int cpu_to_le32 (int ) ;
 int unicode_oslm_strings (char**,int ) ;

__attribute__((used)) static int
_sess_auth_rawntlmssp_assemble_req(struct sess_data *sess_data)
{
 SESSION_SETUP_ANDX *pSMB;
 struct cifs_ses *ses = sess_data->ses;
 __u32 capabilities;
 char *bcc_ptr;

 pSMB = (SESSION_SETUP_ANDX *)sess_data->iov[0].iov_base;

 capabilities = cifs_ssetup_hdr(ses, pSMB);
 if ((pSMB->req.hdr.Flags2 & SMBFLG2_UNICODE) == 0) {
  cifs_dbg(VFS, "NTLMSSP requires Unicode support\n");
  return -ENOSYS;
 }

 pSMB->req.hdr.Flags2 |= SMBFLG2_EXT_SEC;
 capabilities |= CAP_EXTENDED_SECURITY;
 pSMB->req.Capabilities |= cpu_to_le32(capabilities);

 bcc_ptr = sess_data->iov[2].iov_base;

 if ((sess_data->iov[0].iov_len + sess_data->iov[1].iov_len) % 2) {
  *bcc_ptr = 0;
  bcc_ptr++;
 }
 unicode_oslm_strings(&bcc_ptr, sess_data->nls_cp);

 sess_data->iov[2].iov_len = (long) bcc_ptr -
     (long) sess_data->iov[2].iov_base;

 return 0;
}

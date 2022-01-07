
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_ses {int sectype; int server; } ;
struct SMB2_sess_data {int func; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int FYI ;


 int SMB2_auth_kerberos ;
 int SMB2_sess_auth_rawntlmssp_negotiate ;
 int Unspecified ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int smb2_select_sectype (int ,int ) ;

__attribute__((used)) static int
SMB2_select_sec(struct cifs_ses *ses, struct SMB2_sess_data *sess_data)
{
 int type;

 type = smb2_select_sectype(ses->server, ses->sectype);
 cifs_dbg(FYI, "sess setup type %d\n", type);
 if (type == Unspecified) {
  cifs_dbg(VFS,
   "Unable to select appropriate authentication method!");
  return -EINVAL;
 }

 switch (type) {
 case 129:
  sess_data->func = SMB2_auth_kerberos;
  break;
 case 128:
  sess_data->func = SMB2_sess_auth_rawntlmssp_negotiate;
  break;
 default:
  cifs_dbg(VFS, "secType %d not supported!\n", type);
  return -EOPNOTSUPP;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sess_data {int func; } ;
struct cifs_ses {int sectype; int server; } ;


 int EINVAL ;
 int ENOSYS ;
 int EOPNOTSUPP ;
 int FYI ;





 int Unspecified ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_select_sectype (int ,int ) ;
 int sess_auth_kerberos ;
 int sess_auth_lanman ;
 int sess_auth_ntlm ;
 int sess_auth_ntlmv2 ;
 int sess_auth_rawntlmssp_negotiate ;

__attribute__((used)) static int select_sec(struct cifs_ses *ses, struct sess_data *sess_data)
{
 int type;

 type = cifs_select_sectype(ses->server, ses->sectype);
 cifs_dbg(FYI, "sess setup type %d\n", type);
 if (type == Unspecified) {
  cifs_dbg(VFS,
   "Unable to select appropriate authentication method!");
  return -EINVAL;
 }

 switch (type) {
 case 131:
  return -EOPNOTSUPP;

 case 130:
  sess_data->func = sess_auth_ntlm;
  break;
 case 129:
  sess_data->func = sess_auth_ntlmv2;
  break;
 case 132:




  cifs_dbg(VFS, "Kerberos negotiated but upcall support disabled!\n");
  return -ENOSYS;
  break;

 case 128:
  sess_data->func = sess_auth_rawntlmssp_negotiate;
  break;
 default:
  cifs_dbg(VFS, "secType %d not supported!\n", type);
  return -ENOSYS;
 }

 return 0;
}

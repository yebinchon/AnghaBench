
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct smb_vol {int sign; int nullauth; int sectype; } ;


 int Kerberos ;
 int LANMAN ;
 int MAX_OPT_ARGS ;
 int NTLM ;
 int NTLMv2 ;
 int RawNTLMSSP ;
 int Unspecified ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_secflavor_tokens ;
 int match_token (char*,int ,int *) ;

__attribute__((used)) static int cifs_parse_security_flavors(char *value,
           struct smb_vol *vol)
{

 substring_t args[MAX_OPT_ARGS];





 vol->sectype = Unspecified;
 vol->sign = 0;

 switch (match_token(value, cifs_secflavor_tokens, args)) {
 case 135:
  cifs_dbg(VFS, "sec=krb5p is not supported!\n");
  return 1;
 case 136:
  vol->sign = 1;

 case 137:
  vol->sectype = Kerberos;
  break;
 case 130:
  vol->sign = 1;

 case 131:
  vol->sectype = RawNTLMSSP;
  break;
 case 132:
  vol->sign = 1;

 case 138:
  vol->sectype = NTLM;
  break;
 case 128:
  vol->sign = 1;

 case 129:
  vol->sectype = NTLMv2;
  break;





 case 133:
  vol->nullauth = 1;
  break;
 default:
  cifs_dbg(VFS, "bad security option: %s\n", value);
  return 1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int negflavor; int sec_mskerberos; int sec_kerberos; int sec_ntlmssp; } ;
typedef enum securityEnum { ____Placeholder_securityEnum } securityEnum ;


 int CIFSSEC_MAY_KRB5 ;
 int CIFSSEC_MAY_LANMAN ;
 int CIFSSEC_MAY_NTLM ;
 int CIFSSEC_MAY_NTLMSSP ;
 int CIFSSEC_MAY_NTLMV2 ;
 int global_secflags ;

enum securityEnum
cifs_select_sectype(struct TCP_Server_Info *server, enum securityEnum requested)
{
 switch (server->negflavor) {
 case 136:
  switch (requested) {
  case 133:
  case 129:
   return requested;
  case 128:
   if (server->sec_ntlmssp &&
       (global_secflags & CIFSSEC_MAY_NTLMSSP))
    return 129;
   if ((server->sec_kerberos || server->sec_mskerberos) &&
       (global_secflags & CIFSSEC_MAY_KRB5))
    return 133;

  default:
   return 128;
  }
 case 134:
  switch (requested) {
  case 131:
  case 130:
   return requested;
  case 128:
   if (global_secflags & CIFSSEC_MAY_NTLMV2)
    return 130;
   if (global_secflags & CIFSSEC_MAY_NTLM)
    return 131;
  default:
   break;
  }

 case 135:
  switch (requested) {
  case 132:
   return requested;
  case 128:
   if (global_secflags & CIFSSEC_MAY_LANMAN)
    return 132;

  default:
   return 128;
  }
 default:
  return 128;
 }
}

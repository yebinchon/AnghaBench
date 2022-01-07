
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int sec_mskerberos; int sec_kerberos; int sec_ntlmssp; } ;
typedef enum securityEnum { ____Placeholder_securityEnum } securityEnum ;


 int CIFSSEC_MAY_KRB5 ;
 int CIFSSEC_MAY_NTLMSSP ;




 int global_secflags ;

enum securityEnum
smb2_select_sectype(struct TCP_Server_Info *server, enum securityEnum requested)
{
 switch (requested) {
 case 131:
 case 129:
  return requested;
 case 130:
  return 129;
 case 128:
  if (server->sec_ntlmssp &&
   (global_secflags & CIFSSEC_MAY_NTLMSSP))
   return 129;
  if ((server->sec_kerberos || server->sec_mskerberos) &&
   (global_secflags & CIFSSEC_MAY_KRB5))
   return 131;

 default:
  return 128;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum securityEnum { ____Placeholder_securityEnum } securityEnum ;


 int CIFSSEC_MAY_KRB5 ;
 int CIFSSEC_MAY_NTLMSSP ;



 int global_secflags ;

__attribute__((used)) static bool
should_set_ext_sec_flag(enum securityEnum sectype)
{
 switch (sectype) {
 case 129:
 case 130:
  return 1;
 case 128:
  if (global_secflags &
      (CIFSSEC_MAY_KRB5 | CIFSSEC_MAY_NTLMSSP))
   return 1;

 default:
  return 0;
 }
}

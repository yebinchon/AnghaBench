
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ica_xcRB {int dummy; } ;


 long _zcrypt_send_cprb (int *,struct ica_xcRB*) ;
 int ap_perms ;

long zcrypt_send_cprb(struct ica_xcRB *xcRB)
{
 return _zcrypt_send_cprb(&ap_perms, xcRB);
}

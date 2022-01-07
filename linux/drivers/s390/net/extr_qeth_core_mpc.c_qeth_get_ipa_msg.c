
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum qeth_ipa_return_codes { ____Placeholder_qeth_ipa_return_codes } qeth_ipa_return_codes ;
struct TYPE_3__ {int rc; char const* msg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* qeth_ipa_rc_msg ;

const char *qeth_get_ipa_msg(enum qeth_ipa_return_codes rc)
{
 int x;

 for (x = 0; x < ARRAY_SIZE(qeth_ipa_rc_msg) - 1; x++)
  if (qeth_ipa_rc_msg[x].rc == rc)
   return qeth_ipa_rc_msg[x].msg;
 return qeth_ipa_rc_msg[x].msg;
}

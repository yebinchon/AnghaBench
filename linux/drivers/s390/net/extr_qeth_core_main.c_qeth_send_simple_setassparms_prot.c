
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_card {int dummy; } ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef enum qeth_ipa_funcs { ____Placeholder_qeth_ipa_funcs } qeth_ipa_funcs ;
struct TYPE_5__ {int flags_32bit; } ;
struct TYPE_6__ {TYPE_1__ data; } ;
struct TYPE_7__ {TYPE_2__ setassparms; } ;
struct TYPE_8__ {TYPE_3__ data; } ;


 int ENOMEM ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,int) ;
 unsigned int SETASS_DATA_SIZEOF (int ) ;
 TYPE_4__* __ipa_cmd (struct qeth_cmd_buffer*) ;
 int flags_32bit ;
 struct qeth_cmd_buffer* qeth_get_setassparms_cmd (struct qeth_card*,int,int ,unsigned int,int) ;
 int qeth_send_ipa_cmd (struct qeth_card*,struct qeth_cmd_buffer*,int ,int *) ;
 int qeth_setassparms_cb ;

int qeth_send_simple_setassparms_prot(struct qeth_card *card,
          enum qeth_ipa_funcs ipa_func,
          u16 cmd_code, u32 *data,
          enum qeth_prot_versions prot)
{
 unsigned int length = data ? SETASS_DATA_SIZEOF(flags_32bit) : 0;
 struct qeth_cmd_buffer *iob;

 QETH_CARD_TEXT_(card, 4, "simassp%i", prot);
 iob = qeth_get_setassparms_cmd(card, ipa_func, cmd_code, length, prot);
 if (!iob)
  return -ENOMEM;

 if (data)
  __ipa_cmd(iob)->data.setassparms.data.flags_32bit = *data;
 return qeth_send_ipa_cmd(card, iob, qeth_setassparms_cb, ((void*)0));
}

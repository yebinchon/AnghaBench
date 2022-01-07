
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qeth_card {int dummy; } ;
typedef enum qeth_ipa_funcs { ____Placeholder_qeth_ipa_funcs } qeth_ipa_funcs ;


 int QETH_PROT_IPV6 ;
 int qeth_send_simple_setassparms_prot (struct qeth_card*,int,int ,int *,int ) ;

__attribute__((used)) static inline int qeth_send_simple_setassparms_v6(struct qeth_card *card,
        enum qeth_ipa_funcs ipa_func,
        u16 cmd_code, u32 *data)
{
 return qeth_send_simple_setassparms_prot(card, ipa_func, cmd_code,
       data, QETH_PROT_IPV6);
}

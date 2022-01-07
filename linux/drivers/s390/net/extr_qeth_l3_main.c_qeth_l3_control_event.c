
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipa_cmd {int dummy; } ;
struct qeth_card {int dummy; } ;



__attribute__((used)) static int qeth_l3_control_event(struct qeth_card *card,
     struct qeth_ipa_cmd *cmd)
{
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipa_cmd {int dummy; } ;
struct qeth_cmd_buffer {scalar_t__ data; } ;


 scalar_t__ IPA_PDU_HEADER_SIZE ;

__attribute__((used)) static inline struct qeth_ipa_cmd *__ipa_cmd(struct qeth_cmd_buffer *iob)
{
 return (struct qeth_ipa_cmd *)(iob->data + IPA_PDU_HEADER_SIZE);
}

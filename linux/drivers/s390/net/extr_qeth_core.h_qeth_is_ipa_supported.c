
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_ipa_info {int supported_funcs; } ;
typedef enum qeth_ipa_funcs { ____Placeholder_qeth_ipa_funcs } qeth_ipa_funcs ;



__attribute__((used)) static inline int qeth_is_ipa_supported(struct qeth_ipa_info *ipa,
  enum qeth_ipa_funcs func)
{
 return (ipa->supported_funcs & func);
}

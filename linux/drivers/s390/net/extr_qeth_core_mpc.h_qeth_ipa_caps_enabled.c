
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qeth_ipa_caps {int enabled; } ;



__attribute__((used)) static inline bool qeth_ipa_caps_enabled(struct qeth_ipa_caps *caps, u32 mask)
{
 return (caps->enabled & mask) == mask;
}

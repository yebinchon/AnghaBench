
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;
union fscrypt_policy {int version; TYPE_2__ v2; TYPE_1__ v1; } ;
typedef int u8 ;


 int BUG () ;



__attribute__((used)) static inline u8
fscrypt_policy_flags(const union fscrypt_policy *policy)
{
 switch (policy->version) {
 case 129:
  return policy->v1.flags;
 case 128:
  return policy->v2.flags;
 }
 BUG();
}

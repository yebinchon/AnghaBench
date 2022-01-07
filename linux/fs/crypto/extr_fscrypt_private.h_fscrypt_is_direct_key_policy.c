
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union fscrypt_policy {int dummy; } fscrypt_policy ;


 int FSCRYPT_POLICY_FLAG_DIRECT_KEY ;
 int fscrypt_policy_flags (union fscrypt_policy const*) ;

__attribute__((used)) static inline bool
fscrypt_is_direct_key_policy(const union fscrypt_policy *policy)
{
 return fscrypt_policy_flags(policy) & FSCRYPT_POLICY_FLAG_DIRECT_KEY;
}

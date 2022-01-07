
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union fscrypt_policy {scalar_t__ version; } ;


 int fscrypt_policy_size (union fscrypt_policy const*) ;
 int memcmp (union fscrypt_policy const*,union fscrypt_policy const*,int ) ;

bool fscrypt_policies_equal(const union fscrypt_policy *policy1,
       const union fscrypt_policy *policy2)
{
 if (policy1->version != policy2->version)
  return 0;

 return !memcmp(policy1, policy2, fscrypt_policy_size(policy1));
}

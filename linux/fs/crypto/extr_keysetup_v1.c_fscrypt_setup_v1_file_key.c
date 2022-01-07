
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ v1; } ;
struct fscrypt_info {TYPE_2__ ci_policy; } ;


 int FSCRYPT_POLICY_FLAG_DIRECT_KEY ;
 int setup_v1_file_key_derived (struct fscrypt_info*,int const*) ;
 int setup_v1_file_key_direct (struct fscrypt_info*,int const*) ;

int fscrypt_setup_v1_file_key(struct fscrypt_info *ci, const u8 *raw_master_key)
{
 if (ci->ci_policy.v1.flags & FSCRYPT_POLICY_FLAG_DIRECT_KEY)
  return setup_v1_file_key_direct(ci, raw_master_key);
 else
  return setup_v1_file_key_derived(ci, raw_master_key);
}

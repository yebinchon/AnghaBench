
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fscrypt_info {TYPE_1__* ci_mode; int ci_nonce; } ;
struct TYPE_2__ {int keysize; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int derive_key_aes (int const*,int ,int *,int ) ;
 int fscrypt_set_derived_key (struct fscrypt_info*,int *) ;
 int * kmalloc (int ,int ) ;
 int kzfree (int *) ;

__attribute__((used)) static int setup_v1_file_key_derived(struct fscrypt_info *ci,
         const u8 *raw_master_key)
{
 u8 *derived_key;
 int err;





 derived_key = kmalloc(ci->ci_mode->keysize, GFP_NOFS);
 if (!derived_key)
  return -ENOMEM;

 err = derive_key_aes(raw_master_key, ci->ci_nonce,
        derived_key, ci->ci_mode->keysize);
 if (err)
  goto out;

 err = fscrypt_set_derived_key(ci, derived_key);
out:
 kzfree(derived_key);
 return err;
}

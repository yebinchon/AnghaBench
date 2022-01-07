
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int const* master_key_descriptor; } ;
struct TYPE_5__ {TYPE_1__ v1; } ;
struct fscrypt_info {TYPE_3__* ci_mode; TYPE_2__ ci_policy; int ci_inode; } ;
struct fscrypt_direct_key {int dk_raw; int dk_descriptor; int * dk_ctfm; TYPE_3__* dk_mode; int dk_refcount; } ;
struct TYPE_6__ {int keysize; } ;


 int ENOMEM ;
 struct fscrypt_direct_key* ERR_PTR (int) ;
 int FSCRYPT_KEY_DESCRIPTOR_SIZE ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 struct fscrypt_direct_key* find_or_insert_direct_key (struct fscrypt_direct_key*,int const*,struct fscrypt_info const*) ;
 int free_direct_key (struct fscrypt_direct_key*) ;
 int * fscrypt_allocate_skcipher (TYPE_3__*,int const*,int ) ;
 struct fscrypt_direct_key* kzalloc (int,int ) ;
 int memcpy (int ,int const*,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static struct fscrypt_direct_key *
fscrypt_get_direct_key(const struct fscrypt_info *ci, const u8 *raw_key)
{
 struct fscrypt_direct_key *dk;
 int err;


 dk = find_or_insert_direct_key(((void*)0), raw_key, ci);
 if (dk)
  return dk;


 dk = kzalloc(sizeof(*dk), GFP_NOFS);
 if (!dk)
  return ERR_PTR(-ENOMEM);
 refcount_set(&dk->dk_refcount, 1);
 dk->dk_mode = ci->ci_mode;
 dk->dk_ctfm = fscrypt_allocate_skcipher(ci->ci_mode, raw_key,
      ci->ci_inode);
 if (IS_ERR(dk->dk_ctfm)) {
  err = PTR_ERR(dk->dk_ctfm);
  dk->dk_ctfm = ((void*)0);
  goto err_free_dk;
 }
 memcpy(dk->dk_descriptor, ci->ci_policy.v1.master_key_descriptor,
        FSCRYPT_KEY_DESCRIPTOR_SIZE);
 memcpy(dk->dk_raw, raw_key, ci->ci_mode->keysize);

 return find_or_insert_direct_key(dk, raw_key, ci);

err_free_dk:
 free_direct_key(dk);
 return ERR_PTR(err);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct key {int sem; } ;
struct fscrypt_key {int raw; } ;
struct TYPE_10__ {int master_key_descriptor; } ;
struct TYPE_11__ {TYPE_4__ v1; } ;
struct fscrypt_info {TYPE_6__* ci_mode; TYPE_5__ ci_policy; TYPE_3__* ci_inode; } ;
struct TYPE_12__ {int keysize; } ;
struct TYPE_9__ {TYPE_2__* i_sb; } ;
struct TYPE_8__ {TYPE_1__* s_cop; } ;
struct TYPE_7__ {scalar_t__ key_prefix; } ;


 int ENOKEY ;
 struct key* ERR_PTR (int ) ;
 scalar_t__ FSCRYPT_KEY_DESC_PREFIX ;
 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 struct key* find_and_lock_process_key (scalar_t__,int ,int ,struct fscrypt_key const**) ;
 int fscrypt_setup_v1_file_key (struct fscrypt_info*,int ) ;
 int key_put (struct key*) ;
 int up_read (int *) ;

int fscrypt_setup_v1_file_key_via_subscribed_keyrings(struct fscrypt_info *ci)
{
 struct key *key;
 const struct fscrypt_key *payload;
 int err;

 key = find_and_lock_process_key(FSCRYPT_KEY_DESC_PREFIX,
     ci->ci_policy.v1.master_key_descriptor,
     ci->ci_mode->keysize, &payload);
 if (key == ERR_PTR(-ENOKEY) && ci->ci_inode->i_sb->s_cop->key_prefix) {
  key = find_and_lock_process_key(ci->ci_inode->i_sb->s_cop->key_prefix,
      ci->ci_policy.v1.master_key_descriptor,
      ci->ci_mode->keysize, &payload);
 }
 if (IS_ERR(key))
  return PTR_ERR(key);

 err = fscrypt_setup_v1_file_key(ci, payload->raw);
 up_read(&key->sem);
 key_put(key);
 return err;
}

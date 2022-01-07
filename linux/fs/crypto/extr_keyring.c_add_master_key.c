
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_master_keys; } ;
struct TYPE_2__ {int * data; } ;
struct key {int sem; TYPE_1__ payload; } ;
struct fscrypt_master_key_secret {int dummy; } ;
struct fscrypt_key_specifier {int dummy; } ;
typedef int DEFINE_MUTEX ;


 int ENOKEY ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_DEAD ;
 int PTR_ERR (struct key*) ;
 int add_existing_master_key (int ,struct fscrypt_master_key_secret*) ;
 int add_new_master_key (struct fscrypt_master_key_secret*,struct fscrypt_key_specifier const*,int ) ;
 int allocate_filesystem_keyring (struct super_block*) ;
 int down_write (int *) ;
 struct key* fscrypt_find_master_key (struct super_block*,struct fscrypt_key_specifier const*) ;
 int key_invalidate (struct key*) ;
 int key_put (struct key*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int add_master_key(struct super_block *sb,
     struct fscrypt_master_key_secret *secret,
     const struct fscrypt_key_specifier *mk_spec)
{
 static DEFINE_MUTEX(fscrypt_add_key_mutex);
 struct key *key;
 int err;

 mutex_lock(&fscrypt_add_key_mutex);
retry:
 key = fscrypt_find_master_key(sb, mk_spec);
 if (IS_ERR(key)) {
  err = PTR_ERR(key);
  if (err != -ENOKEY)
   goto out_unlock;

  err = allocate_filesystem_keyring(sb);
  if (err)
   goto out_unlock;
  err = add_new_master_key(secret, mk_spec, sb->s_master_keys);
 } else {




  down_write(&key->sem);
  err = add_existing_master_key(key->payload.data[0], secret);
  up_write(&key->sem);
  if (err == KEY_DEAD) {

   key_invalidate(key);
   key_put(key);
   goto retry;
  }
  key_put(key);
 }
out_unlock:
 mutex_unlock(&fscrypt_add_key_mutex);
 return err;
}

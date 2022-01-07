
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct fscrypt_master_key_secret {int dummy; } ;
struct fscrypt_key_specifier {scalar_t__ type; } ;
struct fscrypt_master_key {int mk_decrypted_inodes_lock; int mk_decrypted_inodes; int mk_refcount; int mk_secret_sem; int mk_secret; struct fscrypt_key_specifier mk_spec; } ;


 int ENOMEM ;
 scalar_t__ FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER ;
 int FSCRYPT_MK_DESCRIPTION_SIZE ;
 int GFP_KERNEL ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_POS_SEARCH ;
 int KEY_USR_SEARCH ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 int add_master_key_user (struct fscrypt_master_key*) ;
 int allocate_master_key_users_keyring (struct fscrypt_master_key*) ;
 int current_cred () ;
 int format_mk_description (char*,struct fscrypt_key_specifier const*) ;
 int free_master_key (struct fscrypt_master_key*) ;
 int init_rwsem (int *) ;
 struct key* key_alloc (int *,char*,int ,int ,int ,int,int ,int *) ;
 int key_instantiate_and_link (struct key*,struct fscrypt_master_key*,int,struct key*,int *) ;
 int key_put (struct key*) ;
 int key_type_fscrypt ;
 struct fscrypt_master_key* kzalloc (int,int ) ;
 int move_master_key_secret (int *,struct fscrypt_master_key_secret*) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int add_new_master_key(struct fscrypt_master_key_secret *secret,
         const struct fscrypt_key_specifier *mk_spec,
         struct key *keyring)
{
 struct fscrypt_master_key *mk;
 char description[FSCRYPT_MK_DESCRIPTION_SIZE];
 struct key *key;
 int err;

 mk = kzalloc(sizeof(*mk), GFP_KERNEL);
 if (!mk)
  return -ENOMEM;

 mk->mk_spec = *mk_spec;

 move_master_key_secret(&mk->mk_secret, secret);
 init_rwsem(&mk->mk_secret_sem);

 refcount_set(&mk->mk_refcount, 1);
 INIT_LIST_HEAD(&mk->mk_decrypted_inodes);
 spin_lock_init(&mk->mk_decrypted_inodes_lock);

 if (mk_spec->type == FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER) {
  err = allocate_master_key_users_keyring(mk);
  if (err)
   goto out_free_mk;
  err = add_master_key_user(mk);
  if (err)
   goto out_free_mk;
 }






 format_mk_description(description, mk_spec);
 key = key_alloc(&key_type_fscrypt, description,
   GLOBAL_ROOT_UID, GLOBAL_ROOT_GID, current_cred(),
   KEY_POS_SEARCH | KEY_USR_SEARCH | KEY_USR_VIEW,
   KEY_ALLOC_NOT_IN_QUOTA, ((void*)0));
 if (IS_ERR(key)) {
  err = PTR_ERR(key);
  goto out_free_mk;
 }
 err = key_instantiate_and_link(key, mk, sizeof(*mk), keyring, ((void*)0));
 key_put(key);
 if (err)
  goto out_free_mk;

 return 0;

out_free_mk:
 free_master_key(mk);
 return err;
}

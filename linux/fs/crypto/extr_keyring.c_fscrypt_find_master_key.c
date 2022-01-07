
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_master_keys; } ;
struct key {int dummy; } ;
struct fscrypt_key_specifier {int dummy; } ;


 int ENOKEY ;
 struct key* ERR_PTR (int ) ;
 int FSCRYPT_MK_DESCRIPTION_SIZE ;
 struct key* READ_ONCE (int ) ;
 int format_mk_description (char*,struct fscrypt_key_specifier const*) ;
 int key_type_fscrypt ;
 struct key* search_fscrypt_keyring (struct key*,int *,char*) ;

struct key *fscrypt_find_master_key(struct super_block *sb,
        const struct fscrypt_key_specifier *mk_spec)
{
 struct key *keyring;
 char description[FSCRYPT_MK_DESCRIPTION_SIZE];


 keyring = READ_ONCE(sb->s_master_keys);
 if (keyring == ((void*)0))
  return ERR_PTR(-ENOKEY);

 format_mk_description(description, mk_spec);
 return search_fscrypt_keyring(keyring, &key_type_fscrypt, description);
}

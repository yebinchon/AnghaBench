
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_master_keys; } ;
struct key {int dummy; } ;


 int FSCRYPT_FS_KEYRING_DESCRIPTION_SIZE ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_POS_SEARCH ;
 int KEY_USR_READ ;
 int KEY_USR_SEARCH ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 int current_cred () ;
 int format_fs_keyring_description (char*,struct super_block*) ;
 struct key* keyring_alloc (char*,int ,int ,int ,int,int ,int *,int *) ;
 int smp_store_release (scalar_t__*,struct key*) ;

__attribute__((used)) static int allocate_filesystem_keyring(struct super_block *sb)
{
 char description[FSCRYPT_FS_KEYRING_DESCRIPTION_SIZE];
 struct key *keyring;

 if (sb->s_master_keys)
  return 0;

 format_fs_keyring_description(description, sb);
 keyring = keyring_alloc(description, GLOBAL_ROOT_UID, GLOBAL_ROOT_GID,
    current_cred(), KEY_POS_SEARCH |
      KEY_USR_SEARCH | KEY_USR_READ | KEY_USR_VIEW,
    KEY_ALLOC_NOT_IN_QUOTA, ((void*)0), ((void*)0));
 if (IS_ERR(keyring))
  return PTR_ERR(keyring);


 smp_store_release(&sb->s_master_keys, keyring);
 return 0;
}

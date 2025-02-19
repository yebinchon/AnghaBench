
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_3__ {int identifier; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct fscrypt_master_key {struct key* mk_users; TYPE_2__ mk_spec; } ;


 int FSCRYPT_MK_USERS_DESCRIPTION_SIZE ;
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
 int format_mk_users_keyring_description (char*,int ) ;
 struct key* keyring_alloc (char*,int ,int ,int ,int,int ,int *,int *) ;

__attribute__((used)) static int allocate_master_key_users_keyring(struct fscrypt_master_key *mk)
{
 char description[FSCRYPT_MK_USERS_DESCRIPTION_SIZE];
 struct key *keyring;

 format_mk_users_keyring_description(description,
         mk->mk_spec.u.identifier);
 keyring = keyring_alloc(description, GLOBAL_ROOT_UID, GLOBAL_ROOT_GID,
    current_cred(), KEY_POS_SEARCH |
      KEY_USR_SEARCH | KEY_USR_READ | KEY_USR_VIEW,
    KEY_ALLOC_NOT_IN_QUOTA, ((void*)0), ((void*)0));
 if (IS_ERR(keyring))
  return PTR_ERR(keyring);

 mk->mk_users = keyring;
 return 0;
}

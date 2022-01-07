
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct key {int dummy; } ;
struct TYPE_3__ {int identifier; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct fscrypt_master_key {int mk_users; TYPE_2__ mk_spec; } ;


 int FSCRYPT_MK_USER_DESCRIPTION_SIZE ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_POS_SEARCH ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 int current_cred () ;
 int current_fsuid () ;
 int current_gid () ;
 int format_mk_user_description (char*,int ) ;
 struct key* key_alloc (int *,char*,int ,int ,int ,int,int ,int *) ;
 int key_instantiate_and_link (struct key*,int *,int ,int ,int *) ;
 int key_put (struct key*) ;
 int key_type_fscrypt_user ;

__attribute__((used)) static int add_master_key_user(struct fscrypt_master_key *mk)
{
 char description[FSCRYPT_MK_USER_DESCRIPTION_SIZE];
 struct key *mk_user;
 int err;

 format_mk_user_description(description, mk->mk_spec.u.identifier);
 mk_user = key_alloc(&key_type_fscrypt_user, description,
       current_fsuid(), current_gid(), current_cred(),
       KEY_POS_SEARCH | KEY_USR_VIEW, 0, ((void*)0));
 if (IS_ERR(mk_user))
  return PTR_ERR(mk_user);

 err = key_instantiate_and_link(mk_user, ((void*)0), 0, mk->mk_users, ((void*)0));
 key_put(mk_user);
 return err;
}

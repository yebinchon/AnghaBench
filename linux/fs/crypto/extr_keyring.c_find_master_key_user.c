
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
 int format_mk_user_description (char*,int ) ;
 int key_type_fscrypt_user ;
 struct key* search_fscrypt_keyring (int ,int *,char*) ;

__attribute__((used)) static struct key *find_master_key_user(struct fscrypt_master_key *mk)
{
 char description[FSCRYPT_MK_USER_DESCRIPTION_SIZE];

 format_mk_user_description(description, mk->mk_spec.u.identifier);
 return search_fscrypt_keyring(mk->mk_users, &key_type_fscrypt_user,
          description);
}

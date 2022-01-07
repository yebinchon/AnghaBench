
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct fscrypt_master_key {int mk_users; } ;


 scalar_t__ IS_ERR (struct key*) ;
 int PTR_ERR (struct key*) ;
 struct key* find_master_key_user (struct fscrypt_master_key*) ;
 int key_put (struct key*) ;
 int key_unlink (int ,struct key*) ;

__attribute__((used)) static int remove_master_key_user(struct fscrypt_master_key *mk)
{
 struct key *mk_user;
 int err;

 mk_user = find_master_key_user(mk);
 if (IS_ERR(mk_user))
  return PTR_ERR(mk_user);
 err = key_unlink(mk->mk_users, mk_user);
 key_put(mk_user);
 return err;
}

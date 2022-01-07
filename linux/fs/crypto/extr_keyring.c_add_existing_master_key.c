
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct fscrypt_master_key_secret {int dummy; } ;
struct fscrypt_master_key {int mk_secret_sem; int mk_secret; int mk_refcount; scalar_t__ mk_users; } ;


 int ENOKEY ;
 struct key* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_DEAD ;
 int PTR_ERR (struct key*) ;
 int add_master_key_user (struct fscrypt_master_key*) ;
 int down_write (int *) ;
 struct key* find_master_key_user (struct fscrypt_master_key*) ;
 int is_master_key_secret_present (int *) ;
 int key_put (struct key*) ;
 int move_master_key_secret (int *,struct fscrypt_master_key_secret*) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int refcount_inc_not_zero (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int add_existing_master_key(struct fscrypt_master_key *mk,
       struct fscrypt_master_key_secret *secret)
{
 struct key *mk_user;
 bool rekey;
 int err;





 if (mk->mk_users) {
  mk_user = find_master_key_user(mk);
  if (mk_user != ERR_PTR(-ENOKEY)) {
   if (IS_ERR(mk_user))
    return PTR_ERR(mk_user);
   key_put(mk_user);
   return 0;
  }
 }


 rekey = !is_master_key_secret_present(&mk->mk_secret);
 if (rekey && !refcount_inc_not_zero(&mk->mk_refcount))
  return KEY_DEAD;


 if (mk->mk_users) {
  err = add_master_key_user(mk);
  if (err) {
   if (rekey && refcount_dec_and_test(&mk->mk_refcount))
    return KEY_DEAD;
   return err;
  }
 }


 if (rekey) {
  down_write(&mk->mk_secret_sem);
  move_master_key_secret(&mk->mk_secret, secret);
  up_write(&mk->mk_secret_sem);
 }
 return 0;
}

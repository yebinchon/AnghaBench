
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct ecryptfs_mount_crypt_stat {int flags; } ;
struct ecryptfs_auth_tok {int dummy; } ;


 int ECRYPTFS_GLOBAL_MOUNT_AUTH_TOK_ONLY ;
 int EINVAL ;
 int ENOENT ;
 int ecryptfs_find_global_auth_tok_for_sig (struct key**,struct ecryptfs_auth_tok**,struct ecryptfs_mount_crypt_stat*,char*) ;
 int ecryptfs_keyring_auth_tok_for_sig (struct key**,struct ecryptfs_auth_tok**,char*) ;

__attribute__((used)) static int
ecryptfs_find_auth_tok_for_sig(
 struct key **auth_tok_key,
 struct ecryptfs_auth_tok **auth_tok,
 struct ecryptfs_mount_crypt_stat *mount_crypt_stat,
 char *sig)
{
 int rc = 0;

 rc = ecryptfs_find_global_auth_tok_for_sig(auth_tok_key, auth_tok,
         mount_crypt_stat, sig);
 if (rc == -ENOENT) {





  if (mount_crypt_stat->flags
    & ECRYPTFS_GLOBAL_MOUNT_AUTH_TOK_ONLY)
   return -EINVAL;

  rc = ecryptfs_keyring_auth_tok_for_sig(auth_tok_key, auth_tok,
             sig);
 }
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecryptfs_mount_crypt_stat {int global_auth_tok_list_mutex; int global_auth_tok_list; } ;
struct ecryptfs_global_auth_tok {char* sig; int mount_crypt_stat_list; int flags; } ;


 size_t ECRYPTFS_SIG_SIZE_HEX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ecryptfs_global_auth_tok_cache ;
 struct ecryptfs_global_auth_tok* kmem_cache_zalloc (int ,int ) ;
 int list_add (int *,int *) ;
 int memcpy (char*,char*,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
ecryptfs_add_global_auth_tok(struct ecryptfs_mount_crypt_stat *mount_crypt_stat,
        char *sig, u32 global_auth_tok_flags)
{
 struct ecryptfs_global_auth_tok *new_auth_tok;

 new_auth_tok = kmem_cache_zalloc(ecryptfs_global_auth_tok_cache,
     GFP_KERNEL);
 if (!new_auth_tok)
  return -ENOMEM;

 memcpy(new_auth_tok->sig, sig, ECRYPTFS_SIG_SIZE_HEX);
 new_auth_tok->flags = global_auth_tok_flags;
 new_auth_tok->sig[ECRYPTFS_SIG_SIZE_HEX] = '\0';
 mutex_lock(&mount_crypt_stat->global_auth_tok_list_mutex);
 list_add(&new_auth_tok->mount_crypt_stat_list,
   &mount_crypt_stat->global_auth_tok_list);
 mutex_unlock(&mount_crypt_stat->global_auth_tok_list_mutex);
 return 0;
}

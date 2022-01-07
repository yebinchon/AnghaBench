
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_key_sig {char* keysig; int crypt_stat_list; } ;
struct ecryptfs_crypt_stat {int keysig_list; } ;


 size_t ECRYPTFS_SIG_SIZE_HEX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ecryptfs_key_sig_cache ;
 struct ecryptfs_key_sig* kmem_cache_alloc (int ,int ) ;
 int list_add (int *,int *) ;
 int memcpy (char*,char*,size_t) ;

int ecryptfs_add_keysig(struct ecryptfs_crypt_stat *crypt_stat, char *sig)
{
 struct ecryptfs_key_sig *new_key_sig;

 new_key_sig = kmem_cache_alloc(ecryptfs_key_sig_cache, GFP_KERNEL);
 if (!new_key_sig)
  return -ENOMEM;

 memcpy(new_key_sig->keysig, sig, ECRYPTFS_SIG_SIZE_HEX);
 new_key_sig->keysig[ECRYPTFS_SIG_SIZE_HEX] = '\0';

 list_add(&new_key_sig->crypt_stat_list, &crypt_stat->keysig_list);

 return 0;
}

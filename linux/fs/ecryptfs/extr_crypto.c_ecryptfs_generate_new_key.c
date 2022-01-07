
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int key_size; int key; int flags; } ;


 int ECRYPTFS_KEY_VALID ;
 int KERN_DEBUG ;
 int ecryptfs_compute_root_iv (struct ecryptfs_crypt_stat*) ;
 int ecryptfs_dump_hex (int ,int ) ;
 int ecryptfs_printk (int ,char*) ;
 scalar_t__ ecryptfs_verbosity ;
 int get_random_bytes (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ecryptfs_generate_new_key(struct ecryptfs_crypt_stat *crypt_stat)
{
 get_random_bytes(crypt_stat->key, crypt_stat->key_size);
 crypt_stat->flags |= ECRYPTFS_KEY_VALID;
 ecryptfs_compute_root_iv(crypt_stat);
 if (unlikely(ecryptfs_verbosity > 0)) {
  ecryptfs_printk(KERN_DEBUG, "Generated new session key:\n");
  ecryptfs_dump_hex(crypt_stat->key,
      crypt_stat->key_size);
 }
}

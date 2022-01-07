
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_master_key_secret {int size; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static inline bool
is_master_key_secret_present(const struct fscrypt_master_key_secret *secret)
{







 return READ_ONCE(secret->size) != 0;
}

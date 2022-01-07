
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_master_key_secret {int dummy; } ;


 int memcpy (struct fscrypt_master_key_secret*,struct fscrypt_master_key_secret*,int) ;
 int memzero_explicit (struct fscrypt_master_key_secret*,int) ;

__attribute__((used)) static void move_master_key_secret(struct fscrypt_master_key_secret *dst,
       struct fscrypt_master_key_secret *src)
{
 memcpy(dst, src, sizeof(*dst));
 memzero_explicit(src, sizeof(*src));
}

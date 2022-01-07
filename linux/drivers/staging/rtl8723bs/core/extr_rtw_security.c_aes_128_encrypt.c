
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int rijndaelEncrypt (void*,int *,int *) ;

__attribute__((used)) static void aes_128_encrypt(void *ctx, u8 *plain, u8 *crypt)
{
 rijndaelEncrypt(ctx, plain, crypt);
}

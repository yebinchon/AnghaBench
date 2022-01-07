
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kzfree (void*) ;

__attribute__((used)) static void aes_encrypt_deinit(void *ctx)
{
 kzfree(ctx);
}

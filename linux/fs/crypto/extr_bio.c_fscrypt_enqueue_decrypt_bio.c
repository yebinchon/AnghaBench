
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_ctx {int work; struct bio* bio; } ;
struct bio {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int completion_pages ;
 int fscrypt_enqueue_decrypt_work (int *) ;

void fscrypt_enqueue_decrypt_bio(struct fscrypt_ctx *ctx, struct bio *bio)
{
 INIT_WORK(&ctx->work, completion_pages);
 ctx->bio = bio;
 fscrypt_enqueue_decrypt_work(&ctx->work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_tcp_queue {int snd_hash; int rcv_hash; } ;
struct crypto_ahash {int dummy; } ;


 int ahash_request_free (int ) ;
 struct crypto_ahash* crypto_ahash_reqtfm (int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;

__attribute__((used)) static void nvmet_tcp_free_crypto(struct nvmet_tcp_queue *queue)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(queue->rcv_hash);

 ahash_request_free(queue->rcv_hash);
 ahash_request_free(queue->snd_hash);
 crypto_free_ahash(tfm);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_tcp_queue {void* snd_hash; void* rcv_hash; } ;
struct crypto_ahash {int dummy; } ;


 int CRYPTO_ALG_ASYNC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int PTR_ERR (struct crypto_ahash*) ;
 void* ahash_request_alloc (struct crypto_ahash*,int ) ;
 int ahash_request_free (void*) ;
 int ahash_request_set_callback (void*,int ,int *,int *) ;
 struct crypto_ahash* crypto_alloc_ahash (char*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;

__attribute__((used)) static int nvme_tcp_alloc_crypto(struct nvme_tcp_queue *queue)
{
 struct crypto_ahash *tfm;

 tfm = crypto_alloc_ahash("crc32c", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(tfm))
  return PTR_ERR(tfm);

 queue->snd_hash = ahash_request_alloc(tfm, GFP_KERNEL);
 if (!queue->snd_hash)
  goto free_tfm;
 ahash_request_set_callback(queue->snd_hash, 0, ((void*)0), ((void*)0));

 queue->rcv_hash = ahash_request_alloc(tfm, GFP_KERNEL);
 if (!queue->rcv_hash)
  goto free_snd_hash;
 ahash_request_set_callback(queue->rcv_hash, 0, ((void*)0), ((void*)0));

 return 0;
free_snd_hash:
 ahash_request_free(queue->snd_hash);
free_tfm:
 crypto_free_ahash(tfm);
 return -ENOMEM;
}

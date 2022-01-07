
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ahash_request {int dummy; } ;


 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,void*,size_t) ;
 int crypto_ahash_digest (struct ahash_request*) ;
 int sg_init_one (struct scatterlist*,void*,size_t) ;

__attribute__((used)) static inline void nvmet_tcp_hdgst(struct ahash_request *hash,
  void *pdu, size_t len)
{
 struct scatterlist sg;

 sg_init_one(&sg, pdu, len);
 ahash_request_set_crypt(hash, &sg, pdu + len, len);
 crypto_ahash_digest(hash);
}

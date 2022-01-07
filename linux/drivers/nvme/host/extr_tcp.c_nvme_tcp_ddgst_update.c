
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
struct ahash_request {int dummy; } ;
typedef int off_t ;


 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,int *,size_t) ;
 int crypto_ahash_update (struct ahash_request*) ;
 int sg_init_marker (struct scatterlist*,int) ;
 int sg_set_page (struct scatterlist*,struct page*,size_t,int ) ;

__attribute__((used)) static inline void nvme_tcp_ddgst_update(struct ahash_request *hash,
  struct page *page, off_t off, size_t len)
{
 struct scatterlist sg;

 sg_init_marker(&sg, 1);
 sg_set_page(&sg, page, len, off);
 ahash_request_set_crypt(hash, &sg, ((void*)0), len);
 crypto_ahash_update(hash);
}

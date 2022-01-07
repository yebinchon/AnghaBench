
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ahash_request {int dummy; } ;
typedef int __le32 ;


 int ahash_request_set_crypt (struct ahash_request*,int *,int *,int ) ;
 int crypto_ahash_final (struct ahash_request*) ;

__attribute__((used)) static inline void nvme_tcp_ddgst_final(struct ahash_request *hash,
  __le32 *dgst)
{
 ahash_request_set_crypt(hash, ((void*)0), (u8 *)dgst, 0);
 crypto_ahash_final(hash);
}

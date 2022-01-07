
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct scatterlist {int dummy; } ;
struct ahash_request {int dummy; } ;


 int ARRAY_SIZE (struct scatterlist*) ;
 int ahash_request_set_crypt (struct ahash_request*,struct scatterlist*,void*,scalar_t__) ;
 int crypto_ahash_digest (struct ahash_request*) ;
 int sg_init_table (struct scatterlist*,int ) ;
 int sg_set_buf (struct scatterlist*,void const*,scalar_t__) ;

__attribute__((used)) static void iscsit_do_crypto_hash_buf(struct ahash_request *hash,
 const void *buf, u32 payload_length, u32 padding,
 const void *pad_bytes, void *data_crc)
{
 struct scatterlist sg[2];

 sg_init_table(sg, ARRAY_SIZE(sg));
 sg_set_buf(sg, buf, payload_length);
 if (padding)
  sg_set_buf(sg + 1, pad_bytes, padding);

 ahash_request_set_crypt(hash, sg, data_crc, payload_length + padding);

 crypto_ahash_digest(hash);
}

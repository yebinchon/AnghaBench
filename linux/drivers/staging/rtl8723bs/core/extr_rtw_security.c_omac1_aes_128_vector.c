
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;
 int aes_128_encrypt (void*,int*,int*) ;
 int aes_encrypt_deinit (void*) ;
 void* aes_encrypt_init (int*,int) ;
 int gf_mulx (int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int omac1_aes_128_vector(u8 *key, size_t num_elem,
        u8 *addr[], size_t *len, u8 *mac)
{
 void *ctx;
 u8 cbc[AES_BLOCK_SIZE], pad[AES_BLOCK_SIZE];
 u8 *pos, *end;
 size_t i, e, left, total_len;

 ctx = aes_encrypt_init(key, 16);
 if (ctx == ((void*)0))
  return -1;
 memset(cbc, 0, AES_BLOCK_SIZE);

 total_len = 0;
 for (e = 0; e < num_elem; e++)
  total_len += len[e];
 left = total_len;

 e = 0;
 pos = addr[0];
 end = pos + len[0];

 while (left >= AES_BLOCK_SIZE) {
  for (i = 0; i < AES_BLOCK_SIZE; i++) {
   cbc[i] ^= *pos++;
   if (pos >= end) {
    e++;
    pos = addr[e];
    end = pos + len[e];
   }
  }
  if (left > AES_BLOCK_SIZE)
   aes_128_encrypt(ctx, cbc, cbc);
  left -= AES_BLOCK_SIZE;
 }

 memset(pad, 0, AES_BLOCK_SIZE);
 aes_128_encrypt(ctx, pad, pad);
 gf_mulx(pad);

 if (left || total_len == 0) {
  for (i = 0; i < left; i++) {
   cbc[i] ^= *pos++;
   if (pos >= end) {
    e++;
    pos = addr[e];
    end = pos + len[e];
   }
  }
  cbc[left] ^= 0x80;
  gf_mulx(pad);
 }

 for (i = 0; i < AES_BLOCK_SIZE; i++)
  pad[i] ^= cbc[i];
 aes_128_encrypt(ctx, pad, mac);
 aes_encrypt_deinit(ctx);
 return 0;
}

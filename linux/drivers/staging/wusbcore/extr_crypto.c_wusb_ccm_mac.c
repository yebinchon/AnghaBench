
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct aes_ccm_nonce {int dummy; } ;
struct TYPE_12__ {int flags; scalar_t__ counter; struct aes_ccm_nonce ccm_nonce; } ;
struct TYPE_11__ {int flags; void* lm; struct aes_ccm_nonce ccm_nonce; } ;
struct TYPE_10__ {int mac_header; void* la; } ;
struct wusb_mac_scratch {TYPE_3__ ax; TYPE_2__ b0; TYPE_1__ b1; } ;
struct crypto_shash {int dummy; } ;
struct aes_ccm_label {int dummy; } ;
struct aes_ccm_block {int dummy; } ;
struct TYPE_13__ {struct crypto_shash* tfm; } ;


 int AES_BLOCK_SIZE ;
 int BUILD_BUG_ON (int) ;
 int SHASH_DESC_ON_STACK (TYPE_4__*,struct crypto_shash*) ;
 void* cpu_to_be16 (size_t) ;
 int crypto_shash_digest (TYPE_4__*,int *,int,int *) ;
 int crypto_shash_finup (TYPE_4__*,void const*,size_t,int *) ;
 int crypto_shash_init (TYPE_4__*) ;
 int crypto_shash_update (TYPE_4__*,int *,int) ;
 int crypto_xor_cpy (void*,int *,int *,int) ;
 TYPE_4__* desc ;
 int memcpy (int *,struct aes_ccm_label const*,int) ;

__attribute__((used)) static int wusb_ccm_mac(struct crypto_shash *tfm_cbcmac,
   struct wusb_mac_scratch *scratch,
   void *mic,
   const struct aes_ccm_nonce *n,
   const struct aes_ccm_label *a, const void *b,
   size_t blen)
{
 SHASH_DESC_ON_STACK(desc, tfm_cbcmac);
 u8 iv[AES_BLOCK_SIZE];





 BUILD_BUG_ON(sizeof(*a) != sizeof(scratch->b1) - sizeof(scratch->b1.la));
 BUILD_BUG_ON(sizeof(scratch->b0) != sizeof(struct aes_ccm_block));
 BUILD_BUG_ON(sizeof(scratch->b1) != sizeof(struct aes_ccm_block));
 BUILD_BUG_ON(sizeof(scratch->ax) != sizeof(struct aes_ccm_block));


 scratch->b0.flags = 0x59;
 scratch->b0.ccm_nonce = *n;
 scratch->b0.lm = cpu_to_be16(0);
 scratch->b1.la = cpu_to_be16(blen + 14);
 memcpy(&scratch->b1.mac_header, a, sizeof(*a));

 desc->tfm = tfm_cbcmac;
 crypto_shash_init(desc);
 crypto_shash_update(desc, (u8 *)&scratch->b0, sizeof(scratch->b0) +
            sizeof(scratch->b1));
 crypto_shash_finup(desc, b, blen, iv);






 scratch->ax.flags = 0x01;
 scratch->ax.ccm_nonce = *n;
 scratch->ax.counter = 0;


 crypto_shash_digest(desc, (u8 *)&scratch->ax, sizeof(scratch->ax),
       (u8 *)&scratch->ax);

 crypto_xor_cpy(mic, (u8 *)&scratch->ax, iv, 8);

 return 8;
}

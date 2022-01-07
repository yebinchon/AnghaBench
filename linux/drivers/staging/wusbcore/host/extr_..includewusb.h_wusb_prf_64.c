
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aes_ccm_nonce {int dummy; } ;
struct aes_ccm_label {int dummy; } ;


 int wusb_prf (void*,size_t,int const*,struct aes_ccm_nonce const*,struct aes_ccm_label const*,void const*,size_t,int) ;

__attribute__((used)) static inline int wusb_prf_64(void *out, size_t out_size, const u8 key[16],
         const struct aes_ccm_nonce *n,
         const struct aes_ccm_label *a,
         const void *b, size_t blen)
{
 return wusb_prf(out, out_size, key, n, a, b, blen, 64);
}

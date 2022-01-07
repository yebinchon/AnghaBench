
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusb_keydvt_out {int dummy; } ;
struct wusb_keydvt_in {int dummy; } ;
struct aes_ccm_nonce {int dummy; } ;
struct aes_ccm_label {char* data; } ;


 int wusb_prf_256 (struct wusb_keydvt_out*,int,int const*,struct aes_ccm_nonce const*,struct aes_ccm_label const*,struct wusb_keydvt_in const*,int) ;

__attribute__((used)) static inline int wusb_key_derive(struct wusb_keydvt_out *keydvt_out,
      const u8 key[16],
      const struct aes_ccm_nonce *n,
      const struct wusb_keydvt_in *keydvt_in)
{
 const struct aes_ccm_label a = { .data = "Pair-wise keys" };
 return wusb_prf_256(keydvt_out, sizeof(*keydvt_out), key, n, &a,
       keydvt_in, sizeof(*keydvt_in));
}

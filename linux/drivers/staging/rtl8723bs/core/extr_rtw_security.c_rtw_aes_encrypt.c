
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct xmit_priv {scalar_t__ frag_len; } ;
struct TYPE_4__ {int* skey; } ;
struct pkt_attrib {scalar_t__ encrypt; scalar_t__ nr_frags; scalar_t__ last_txcmdsz; scalar_t__ hdrlen; scalar_t__ iv_len; scalar_t__ icv_len; int ra; TYPE_2__ dot118021x_UncstKey; } ;
struct xmit_frame {int* buf_addr; struct pkt_attrib attrib; } ;
struct security_priv {size_t dot118021XGrpKeyid; TYPE_1__* dot118021XGrpKey; } ;
struct adapter {struct xmit_priv xmitpriv; struct security_priv securitypriv; } ;
typedef scalar_t__ sint ;
struct TYPE_3__ {int* skey; } ;
typedef int SIZE_PTR ;


 int AES_SW_ENC_CNT_INC (struct security_priv*,int ) ;
 scalar_t__ IS_MCAST (int ) ;
 scalar_t__ RND4 (int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int TXDESC_OFFSET ;
 scalar_t__ _AES_ ;
 int _FAIL ;
 int _SUCCESS ;
 int _drv_err_ ;
 int _module_rtl871x_security_c_ ;
 int aes_cipher (int*,scalar_t__,int*,scalar_t__) ;

u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
{






 sint curfragnum, length;
 u32 prwskeylen;
 u8 *pframe, *prwskey;
 u8 hw_hdr_offset = 0;

 struct pkt_attrib *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;


 u32 res = _SUCCESS;

 if (((struct xmit_frame *)pxmitframe)->buf_addr == ((void*)0))
  return _FAIL;

 hw_hdr_offset = TXDESC_OFFSET;
 pframe = ((struct xmit_frame *)pxmitframe)->buf_addr + hw_hdr_offset;


 if (pattrib->encrypt == _AES_) {
  RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("rtw_aes_encrypt: stainfo!= NULL!!!\n"));

  if (IS_MCAST(pattrib->ra))
   prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey;
  else

   prwskey = pattrib->dot118021x_UncstKey.skey;

  prwskeylen = 16;

  for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
   if ((curfragnum+1) == pattrib->nr_frags) {
    length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;

    aes_cipher(prwskey, pattrib->hdrlen, pframe, length);
   } else {
    length = pxmitpriv->frag_len-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;

    aes_cipher(prwskey, pattrib->hdrlen, pframe, length);
    pframe += pxmitpriv->frag_len;
    pframe = (u8 *)RND4((SIZE_PTR)(pframe));
   }
  }

  AES_SW_ENC_CNT_INC(psecuritypriv, pattrib->ra);
 }
 return res;
}

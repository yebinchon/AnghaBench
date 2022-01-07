
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rx_pkt_attrib {scalar_t__ encrypt; int hdrlen; int iv_len; } ;
struct TYPE_5__ {int len; scalar_t__ rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
union recv_frame {TYPE_3__ u; } ;
typedef int u8 ;
typedef int u32 ;
struct security_priv {int* DefKeylen; size_t PrivacyKeyIndex; TYPE_1__* DefKey; } ;
struct arc4context {int dummy; } ;
struct _adapter {struct security_priv securitypriv; } ;
typedef int __le32 ;
struct TYPE_4__ {int* skey; } ;


 scalar_t__ _WEP104_ ;
 scalar_t__ _WEP40_ ;
 int arcfour_encrypt (struct arc4context*,int*,int*,int) ;
 int arcfour_init (struct arc4context*,int*,int) ;
 int cpu_to_le32 (int ) ;
 int getcrc32 (int*,int) ;
 int memcpy (int*,int*,int) ;

void r8712_wep_decrypt(struct _adapter *padapter, u8 *precvframe)
{

 u8 crc[4];
 struct arc4context mycontext;
 u32 length, keylength;
 u8 *pframe, *payload, *iv, wepkey[16];
 u8 keyindex;
 struct rx_pkt_attrib *prxattrib = &(((union recv_frame *)
       precvframe)->u.hdr.attrib);
 struct security_priv *psecuritypriv = &padapter->securitypriv;

 pframe = (unsigned char *)((union recv_frame *)precvframe)->
    u.hdr.rx_data;

 if ((prxattrib->encrypt == _WEP40_) || (prxattrib->encrypt ==
      _WEP104_)) {
  iv = pframe + prxattrib->hdrlen;
  keyindex = (iv[3] & 0x3);
  keylength = psecuritypriv->DefKeylen[keyindex];
  memcpy(&wepkey[0], iv, 3);
  memcpy(&wepkey[3], &psecuritypriv->DefKey[
   psecuritypriv->PrivacyKeyIndex].skey[0],
   keylength);
  length = ((union recv_frame *)precvframe)->
      u.hdr.len - prxattrib->hdrlen - prxattrib->iv_len;
  payload = pframe + prxattrib->iv_len + prxattrib->hdrlen;

  arcfour_init(&mycontext, wepkey, 3 + keylength);
  arcfour_encrypt(&mycontext, payload, payload, length);

  *((__le32 *)crc) = cpu_to_le32(getcrc32(payload, length - 4));
 }
}

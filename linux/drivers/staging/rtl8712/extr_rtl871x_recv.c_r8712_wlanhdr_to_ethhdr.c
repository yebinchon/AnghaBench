
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int hdrlen; int iv_len; int * src; int * dst; int icv_len; scalar_t__ encrypt; } ;
struct TYPE_3__ {scalar_t__ len; struct rx_pkt_attrib attrib; struct _adapter* adapter; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct mlme_priv {int dummy; } ;
typedef int ieee80211_snap_hdr ;
struct ethhdr {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;
typedef int sint ;
typedef int __be16 ;


 int ENOMEM ;
 int ETH_ALEN ;
 scalar_t__ SNAP_ETH_TYPE_APPLETALK_AARP ;
 scalar_t__ SNAP_ETH_TYPE_IPX ;
 int SNAP_SIZE ;
 int WIFI_MP_STATE ;
 scalar_t__ bridge_tunnel_header ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int* get_recvframe_data (union recv_frame*) ;
 int * get_rxmem (union recv_frame*) ;
 int htons (scalar_t__) ;
 scalar_t__ memcmp (int*,void*,int) ;
 int memcpy (int*,int *,int) ;
 int* recvframe_pull (union recv_frame*,int) ;
 int recvframe_pull_tail (union recv_frame*,int ) ;
 scalar_t__ rfc1042_header ;

int r8712_wlanhdr_to_ethhdr(union recv_frame *precvframe)
{

 sint rmv_len;
 u16 len;
 u8 bsnaphdr;
 u8 *psnap_type;
 struct ieee80211_snap_hdr *psnap;
 struct _adapter *adapter = precvframe->u.hdr.adapter;
 struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

 u8 *ptr = get_recvframe_data(precvframe);
 struct rx_pkt_attrib *pattrib = &precvframe->u.hdr.attrib;

 if (pattrib->encrypt)
  recvframe_pull_tail(precvframe, pattrib->icv_len);
 psnap = (struct ieee80211_snap_hdr *)(ptr + pattrib->hdrlen +
   pattrib->iv_len);
 psnap_type = ptr + pattrib->hdrlen + pattrib->iv_len + SNAP_SIZE;

 if ((!memcmp(psnap, (void *)rfc1042_header, SNAP_SIZE) &&
     (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_IPX, 2)) &&
     (memcmp(psnap_type, (void *)SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
      !memcmp(psnap, (void *)bridge_tunnel_header, SNAP_SIZE)) {



  bsnaphdr = 1;
 } else {

  bsnaphdr = 0;
 }
 rmv_len = pattrib->hdrlen + pattrib->iv_len +
    (bsnaphdr ? SNAP_SIZE : 0);
 len = precvframe->u.hdr.len - rmv_len;
 if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
  ptr += rmv_len;
  *ptr = 0x87;
  *(ptr + 1) = 0x12;

  ptr = recvframe_pull(precvframe, (rmv_len -
        sizeof(struct ethhdr) + 2) - 24);
  if (!ptr)
   return -ENOMEM;
  memcpy(ptr, get_rxmem(precvframe), 24);
  ptr += 24;
 } else {
  ptr = recvframe_pull(precvframe, (rmv_len -
        sizeof(struct ethhdr) + (bsnaphdr ? 2 : 0)));
  if (!ptr)
   return -ENOMEM;
 }

 memcpy(ptr, pattrib->dst, ETH_ALEN);
 memcpy(ptr + ETH_ALEN, pattrib->src, ETH_ALEN);
 if (!bsnaphdr) {
  __be16 be_tmp = htons(len);

  memcpy(ptr + 12, &be_tmp, 2);
 }
 return 0;
}

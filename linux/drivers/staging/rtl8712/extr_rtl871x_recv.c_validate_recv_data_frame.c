
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rx_pkt_attrib {int to_fr_ds; int qos; size_t priority; int hdrlen; scalar_t__ icv_len; scalar_t__ iv_len; scalar_t__ encrypt; int ra; scalar_t__ privacy; scalar_t__ order; scalar_t__ amsdu; int ack_policy; int ta; int bssid; int src; int dst; } ;
struct TYPE_4__ {int * preorder_ctrl; struct sta_info* psta; struct rx_pkt_attrib attrib; int * rx_data; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef int u8 ;
struct TYPE_6__ {int rxcache; } ;
struct sta_info {TYPE_3__ sta_recvpriv; int * recvreorder_ctrl; } ;
struct security_priv {int dummy; } ;
struct _adapter {struct security_priv securitypriv; } ;
typedef int sint ;


 int ETH_ALEN ;
 int GET_ENCRY_ALGO (struct security_priv*,struct sta_info*,scalar_t__,int ) ;
 scalar_t__ GetAMsdu (int *) ;
 int GetAckpolicy (int *) ;
 int * GetAddr1Ptr (int *) ;
 int * GetAddr2Ptr (int *) ;
 size_t GetPriority (int *) ;
 int GetRetry (int *) ;
 int SET_ICE_IV_LEN (scalar_t__,scalar_t__,scalar_t__) ;
 int _FAIL ;
 int _SUCCESS ;
 int ap2sta_data_frame (struct _adapter*,union recv_frame*,struct sta_info**) ;
 int * get_da (int *) ;
 int * get_hdr_bssid (int *) ;
 int * get_sa (int *) ;
 int is_multicast_ether_addr (int ) ;
 int memcpy (int ,int *,int ) ;
 int recv_decache (union recv_frame*,int ,int *) ;
 int sta2ap_data_frame (struct _adapter*,union recv_frame*,struct sta_info**) ;
 int sta2sta_data_frame (struct _adapter*,union recv_frame*,struct sta_info**) ;

__attribute__((used)) static sint validate_recv_data_frame(struct _adapter *adapter,
         union recv_frame *precv_frame)
{
 int res;
 u8 bretry;
 u8 *psa, *pda, *pbssid;
 struct sta_info *psta = ((void*)0);
 u8 *ptr = precv_frame->u.hdr.rx_data;
 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 struct security_priv *psecuritypriv = &adapter->securitypriv;

 bretry = GetRetry(ptr);
 pda = get_da(ptr);
 psa = get_sa(ptr);
 pbssid = get_hdr_bssid(ptr);
 if (pbssid == ((void*)0))
  return _FAIL;
 memcpy(pattrib->dst, pda, ETH_ALEN);
 memcpy(pattrib->src, psa, ETH_ALEN);
 memcpy(pattrib->bssid, pbssid, ETH_ALEN);
 switch (pattrib->to_fr_ds) {
 case 0:
  memcpy(pattrib->ra, pda, ETH_ALEN);
  memcpy(pattrib->ta, psa, ETH_ALEN);
  res = sta2sta_data_frame(adapter, precv_frame, &psta);
  break;
 case 1:
  memcpy(pattrib->ra, pda, ETH_ALEN);
  memcpy(pattrib->ta, pbssid, ETH_ALEN);
  res = ap2sta_data_frame(adapter, precv_frame, &psta);
  break;
 case 2:
  memcpy(pattrib->ra, pbssid, ETH_ALEN);
  memcpy(pattrib->ta, psa, ETH_ALEN);
  res = sta2ap_data_frame(adapter, precv_frame, &psta);
  break;
 case 3:
  memcpy(pattrib->ra, GetAddr1Ptr(ptr), ETH_ALEN);
  memcpy(pattrib->ta, GetAddr2Ptr(ptr), ETH_ALEN);
  return _FAIL;
 default:
  return _FAIL;
 }
 if (res == _FAIL)
  return _FAIL;
 if (psta == ((void*)0))
  return _FAIL;
 precv_frame->u.hdr.psta = psta;
 pattrib->amsdu = 0;

 if (pattrib->qos == 1) {
  pattrib->priority = GetPriority((ptr + 24));
  pattrib->ack_policy = GetAckpolicy((ptr + 24));
  pattrib->amsdu = GetAMsdu((ptr + 24));
  pattrib->hdrlen = pattrib->to_fr_ds == 3 ? 32 : 26;
 } else {
  pattrib->priority = 0;
  pattrib->hdrlen = (pattrib->to_fr_ds == 3) ? 30 : 24;
 }

 if (pattrib->order)
  pattrib->hdrlen += 4;
 precv_frame->u.hdr.preorder_ctrl =
    &psta->recvreorder_ctrl[pattrib->priority];


 if (recv_decache(precv_frame, bretry, &psta->sta_recvpriv.rxcache) ==
     _FAIL)
  return _FAIL;

 if (pattrib->privacy) {
  GET_ENCRY_ALGO(psecuritypriv, psta, pattrib->encrypt,
          is_multicast_ether_addr(pattrib->ra));
  SET_ICE_IV_LEN(pattrib->iv_len, pattrib->icv_len,
          pattrib->encrypt);
 } else {
  pattrib->encrypt = 0;
  pattrib->iv_len = pattrib->icv_len = 0;
 }
 return _SUCCESS;
}

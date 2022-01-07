
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct xmit_priv {int dummy; } ;
struct pkt_attrib {int retry_ctrl; int pktlen; int last_txcmdsz; } ;
struct xmit_frame {scalar_t__ buf_addr; struct pkt_attrib attrib; } ;
struct wlan_bssid_ex {unsigned char* MacAddress; } ;
struct mlme_ext_info {int state; struct wlan_bssid_ex network; } ;
struct mlme_ext_priv {int mgnt_seq; struct mlme_ext_info mlmext_info; } ;
struct ieee80211_hdr_3addr {int dummy; } ;
struct ieee80211_hdr {int addr3; int addr2; int addr1; scalar_t__ frame_control; } ;
struct adapter {int eeprompriv; struct mlme_ext_priv mlmeextpriv; struct xmit_priv xmitpriv; } ;
typedef scalar_t__ __le16 ;


 int SetFrDs (scalar_t__*) ;
 int SetFrameSubType (unsigned char*,int ) ;
 int SetPwrMgt (scalar_t__*) ;
 int SetSeqNum (struct ieee80211_hdr*,int ) ;
 int SetToDs (scalar_t__*) ;
 int TXDESC_OFFSET ;
 int WIFI_DATA_NULL ;
 int WIFI_FW_AP_STATE ;
 int WIFI_FW_STATION_STATE ;
 int WLANHDR_OFFSET ;
 int _FAIL ;
 int _SUCCESS ;
 struct xmit_frame* alloc_mgtxmitframe (struct xmit_priv*) ;
 int dump_mgntframe (struct adapter*,struct xmit_frame*) ;
 int dump_mgntframe_and_wait_ack (struct adapter*,struct xmit_frame*) ;
 int ether_addr_copy (int ,unsigned char*) ;
 int memset (scalar_t__,int ,int) ;
 unsigned char* myid (int *) ;
 int update_mgntframe_attrib (struct adapter*,struct pkt_attrib*) ;

__attribute__((used)) static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
      unsigned int power_mode, bool wait_ack)
{
 int ret = _FAIL;
 struct xmit_frame *pmgntframe;
 struct pkt_attrib *pattrib;
 unsigned char *pframe;
 struct ieee80211_hdr *pwlanhdr;
 __le16 *fctrl;
 struct xmit_priv *pxmitpriv;
 struct mlme_ext_priv *pmlmeext;
 struct mlme_ext_info *pmlmeinfo;
 struct wlan_bssid_ex *pnetwork;

 if (!padapter)
  goto exit;

 pxmitpriv = &padapter->xmitpriv;
 pmlmeext = &padapter->mlmeextpriv;
 pmlmeinfo = &pmlmeext->mlmext_info;
 pnetwork = &pmlmeinfo->network;

 pmgntframe = alloc_mgtxmitframe(pxmitpriv);
 if (!pmgntframe)
  goto exit;


 pattrib = &pmgntframe->attrib;
 update_mgntframe_attrib(padapter, pattrib);
 pattrib->retry_ctrl = 0;

 memset(pmgntframe->buf_addr, 0, WLANHDR_OFFSET + TXDESC_OFFSET);

 pframe = (u8 *)(pmgntframe->buf_addr) + TXDESC_OFFSET;
 pwlanhdr = (struct ieee80211_hdr *)pframe;

 fctrl = &pwlanhdr->frame_control;
 *(fctrl) = 0;

 if ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE)
  SetFrDs(fctrl);
 else if ((pmlmeinfo->state & 0x03) == WIFI_FW_STATION_STATE)
  SetToDs(fctrl);

 if (power_mode)
  SetPwrMgt(fctrl);

 ether_addr_copy(pwlanhdr->addr1, da);
 ether_addr_copy(pwlanhdr->addr2, myid(&padapter->eeprompriv));
 ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);

 SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 pmlmeext->mgnt_seq++;
 SetFrameSubType(pframe, WIFI_DATA_NULL);

 pframe += sizeof(struct ieee80211_hdr_3addr);
 pattrib->pktlen = sizeof(struct ieee80211_hdr_3addr);

 pattrib->last_txcmdsz = pattrib->pktlen;

 if (wait_ack) {
  ret = dump_mgntframe_and_wait_ack(padapter, pmgntframe);
 } else {
  dump_mgntframe(padapter, pmgntframe);
  ret = _SUCCESS;
 }

exit:
 return ret;
}

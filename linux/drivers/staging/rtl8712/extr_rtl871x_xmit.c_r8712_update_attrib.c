
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tx_cmd {int txdw1; } ;
struct sta_priv {int dummy; } ;
struct sta_info {int mac_id; scalar_t__ ieee8021x_blocked; } ;
struct security_priv {int hw_decrypted; scalar_t__ sw_encrypt; int busetkipkey; } ;
struct qos_priv {scalar_t__ qos_option; } ;
struct pkt_file {int pkt_len; } ;
struct pkt_attrib {int ether_type; int pctrl; int pktlen; int dhcp_pkt; int mac_id; int pkt_hdrlen; int priority; int iv_len; int icv_len; int bswenc; int encrypt; int subtype; int hdrlen; scalar_t__ ack_policy; struct sta_info* psta; int * ra; int * src; int * ta; int * dst; } ;
struct mlme_priv {int dhcp_timer; struct qos_priv qospriv; } ;
struct ethhdr {int h_source; int h_dest; int h_proto; } ;
struct TYPE_4__ {scalar_t__ power_mgnt; int smart_ps; } ;
struct TYPE_3__ {scalar_t__ pwr_mode; } ;
struct _adapter {struct security_priv securitypriv; TYPE_2__ registrypriv; TYPE_1__ pwrctrlpriv; struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
typedef int _pkt ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int ETH_P_IP ;
 int GET_ENCRY_ALGO (struct security_priv*,struct sta_info*,int ,int) ;
 int QSEL_SHT ;
 int TXDESC_SIZE ;
 int WIFI_ADHOC_MASTER_STATE ;
 int WIFI_ADHOC_STATE ;
 int WIFI_AP_STATE ;
 int WIFI_DATA_TYPE ;
 int WIFI_MP_STATE ;
 int WIFI_STATION_STATE ;
 int WLAN_HDR_A3_LEN ;

 int _FAIL ;



 int _r8712_open_pktfile (int *,struct pkt_file*) ;
 int _r8712_pktfile_read (struct pkt_file*,...) ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int del_timer_sync (int *) ;
 int * get_bssid (struct mlme_priv*) ;
 int is_multicast_ether_addr (int *) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int ) ;
 int ntohs (int ) ;
 struct sta_info* r8712_get_bcmc_stainfo (struct _adapter*) ;
 struct sta_info* r8712_get_stainfo (struct sta_priv*,int *) ;
 int r8712_set_ps_mode (struct _adapter*,scalar_t__,int ) ;
 int r8712_set_qos (struct pkt_file*,struct pkt_attrib*) ;

int r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
   struct pkt_attrib *pattrib)
{
 struct pkt_file pktfile;
 struct sta_info *psta = ((void*)0);
 struct ethhdr etherhdr;

 struct tx_cmd txdesc;

 bool bmcast;
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct security_priv *psecuritypriv = &padapter->securitypriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct qos_priv *pqospriv = &pmlmepriv->qospriv;

 _r8712_open_pktfile(pkt, &pktfile);

 _r8712_pktfile_read(&pktfile, (unsigned char *)&etherhdr, ETH_HLEN);

 pattrib->ether_type = ntohs(etherhdr.h_proto);





 if (pattrib->ether_type == 0x0806) {
  if (padapter->pwrctrlpriv.pwr_mode !=
      padapter->registrypriv.power_mgnt) {
   del_timer_sync(&pmlmepriv->dhcp_timer);
   r8712_set_ps_mode(padapter,
       padapter->registrypriv.power_mgnt,
       padapter->registrypriv.smart_ps);
  }
 }

 memcpy(pattrib->dst, &etherhdr.h_dest, ETH_ALEN);
 memcpy(pattrib->src, &etherhdr.h_source, ETH_ALEN);
 pattrib->pctrl = 0;
 if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
     check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
  memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
  memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
 } else if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
  memcpy(pattrib->ra, get_bssid(pmlmepriv), ETH_ALEN);
  memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
 } else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
  memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
  memcpy(pattrib->ta, get_bssid(pmlmepriv), ETH_ALEN);
 } else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {

  if (pattrib->ether_type != 0x8712)
   return -EINVAL;




  _r8712_pktfile_read(&pktfile, (u8 *)&txdesc, TXDESC_SIZE);
  memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
  memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
  pattrib->pctrl = 1;
 }

 pattrib->pktlen = pktfile.pkt_len;
 if (pattrib->ether_type == ETH_P_IP) {




  u8 tmp[24];

  _r8712_pktfile_read(&pktfile, &tmp[0], 24);
  pattrib->dhcp_pkt = 0;
  if (pktfile.pkt_len > 282) {
   if (pattrib->ether_type == ETH_P_IP) {
    if (((tmp[21] == 68) && (tmp[23] == 67)) ||
     ((tmp[21] == 67) && (tmp[23] == 68))) {




     pattrib->dhcp_pkt = 1;
    }
   }
  }
 }
 bmcast = is_multicast_ether_addr(pattrib->ra);

 if (bmcast) {
  psta = r8712_get_bcmc_stainfo(padapter);
  pattrib->mac_id = 4;
 } else {
  if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
   psta = r8712_get_stainfo(pstapriv,
       get_bssid(pmlmepriv));
   pattrib->mac_id = 5;
  } else {
   psta = r8712_get_stainfo(pstapriv, pattrib->ra);
   if (psta == ((void*)0))
    return -ENOMEM;
   if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
    pattrib->mac_id = 5;
   else
    pattrib->mac_id = psta->mac_id;
  }
 }

 if (psta) {
  pattrib->psta = psta;
 } else {

  return -ENOMEM;
 }

 pattrib->ack_policy = 0;

 pattrib->pkt_hdrlen = ETH_HLEN;

 if (pqospriv->qos_option) {
  r8712_set_qos(&pktfile, pattrib);
 } else {
  pattrib->hdrlen = WLAN_HDR_A3_LEN;
  pattrib->subtype = WIFI_DATA_TYPE;
  pattrib->priority = 0;
 }
 if (psta->ieee8021x_blocked) {
  pattrib->encrypt = 0;
  if ((pattrib->ether_type != 0x888e) &&
      !check_fwstate(pmlmepriv, WIFI_MP_STATE))
   return -EINVAL;
 } else {
  GET_ENCRY_ALGO(psecuritypriv, psta, pattrib->encrypt, bmcast);
 }
 switch (pattrib->encrypt) {
 case 128:
 case 129:
  pattrib->iv_len = 4;
  pattrib->icv_len = 4;
  break;
 case 130:
  pattrib->iv_len = 8;
  pattrib->icv_len = 4;
  if (padapter->securitypriv.busetkipkey == _FAIL)
   return -EINVAL;
  break;
 case 131:
  pattrib->iv_len = 8;
  pattrib->icv_len = 8;
  break;
 default:
  pattrib->iv_len = 0;
  pattrib->icv_len = 0;
  break;
 }

 if (pattrib->encrypt &&
     (padapter->securitypriv.sw_encrypt ||
     !psecuritypriv->hw_decrypted))
  pattrib->bswenc = 1;
 else
  pattrib->bswenc = 0;



 if (check_fwstate(pmlmepriv, WIFI_MP_STATE))
  pattrib->priority =
      (le32_to_cpu(txdesc.txdw1) >> QSEL_SHT) & 0x1f;
 return 0;
}

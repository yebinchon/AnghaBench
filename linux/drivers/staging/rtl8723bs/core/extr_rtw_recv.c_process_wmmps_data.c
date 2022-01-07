
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int priority; int src; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef int u8 ;
typedef int u16 ;
struct sta_priv {int dummy; } ;
struct sta_info {int qos_info; int state; int uapsd_bk; int uapsd_vi; int uapsd_vo; int uapsd_be; scalar_t__ sleepq_ac_len; int hwaddr; int qos_option; } ;
struct adapter {struct sta_priv stapriv; } ;


 int BIT (int) ;
 int WIFI_SLEEP_STATE ;
 int issue_qos_nulldata (struct adapter*,int ,int ,int ,int ) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;
 int xmit_delivery_enabled_frames (struct adapter*,struct sta_info*) ;

void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame)
{
 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct sta_info *psta = ((void*)0);

 psta = rtw_get_stainfo(pstapriv, pattrib->src);

 if (!psta)
  return;

 if (!psta->qos_option)
  return;

 if (!(psta->qos_info&0xf))
  return;

 if (psta->state&WIFI_SLEEP_STATE) {
  u8 wmmps_ac = 0;

  switch (pattrib->priority) {
  case 1:
  case 2:
   wmmps_ac = psta->uapsd_bk&BIT(1);
   break;
  case 4:
  case 5:
   wmmps_ac = psta->uapsd_vi&BIT(1);
   break;
  case 6:
  case 7:
   wmmps_ac = psta->uapsd_vo&BIT(1);
   break;
  case 0:
  case 3:
  default:
   wmmps_ac = psta->uapsd_be&BIT(1);
   break;
  }

  if (wmmps_ac) {
   if (psta->sleepq_ac_len > 0)

    xmit_delivery_enabled_frames(padapter, psta);
   else

    issue_qos_nulldata(padapter, psta->hwaddr, (u16)pattrib->priority, 0, 0);
  }
 }
}

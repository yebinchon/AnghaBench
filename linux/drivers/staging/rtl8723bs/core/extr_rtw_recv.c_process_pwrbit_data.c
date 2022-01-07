
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int src; } ;
struct TYPE_3__ {struct rx_pkt_attrib attrib; int * rx_data; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef int u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int state; } ;
struct adapter {struct sta_priv stapriv; } ;


 unsigned char GetPwrMgt (int *) ;
 int WIFI_SLEEP_STATE ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;
 int stop_sta_xmit (struct adapter*,struct sta_info*) ;
 int wakeup_sta_to_xmit (struct adapter*,struct sta_info*) ;

void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame)
{
 unsigned char pwrbit;
 u8 *ptr = precv_frame->u.hdr.rx_data;
 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct sta_info *psta = ((void*)0);

 psta = rtw_get_stainfo(pstapriv, pattrib->src);

 pwrbit = GetPwrMgt(ptr);

 if (psta) {
  if (pwrbit) {
   if (!(psta->state & WIFI_SLEEP_STATE)) {



    stop_sta_xmit(padapter, psta);


   }
  } else {
   if (psta->state & WIFI_SLEEP_STATE) {



    wakeup_sta_to_xmit(padapter, psta);


   }
  }

 }
}

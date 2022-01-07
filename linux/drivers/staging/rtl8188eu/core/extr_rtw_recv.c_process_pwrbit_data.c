
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {int state; } ;
struct rx_pkt_attrib {int src; } ;
struct recv_frame {struct rx_pkt_attrib attrib; TYPE_1__* pkt; } ;
struct adapter {struct sta_priv stapriv; } ;
struct TYPE_2__ {int * data; } ;


 unsigned char GetPwrMgt (int *) ;
 int WIFI_SLEEP_STATE ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int ) ;
 int stop_sta_xmit (struct adapter*,struct sta_info*) ;
 int wakeup_sta_to_xmit (struct adapter*,struct sta_info*) ;

__attribute__((used)) static void process_pwrbit_data(struct adapter *padapter,
    struct recv_frame *precv_frame)
{
}

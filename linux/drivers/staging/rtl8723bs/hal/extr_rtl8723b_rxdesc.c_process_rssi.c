
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ SignalStrength; } ;
struct rx_pkt_attrib {TYPE_2__ phy_info; } ;
struct TYPE_7__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_8__ {TYPE_3__ hdr; } ;
union recv_frame {TYPE_4__ u; } ;
struct signal_stat {int total_num; int total_val; int avg_val; scalar_t__ update_req; } ;
struct TYPE_5__ {struct signal_stat signal_strength_data; } ;
struct adapter {TYPE_1__ recvpriv; } ;



__attribute__((used)) static void process_rssi(struct adapter *padapter, union recv_frame *prframe)
{
 struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
 struct signal_stat *signal_stat = &padapter->recvpriv.signal_strength_data;



 {
  if (signal_stat->update_req) {
   signal_stat->total_num = 0;
   signal_stat->total_val = 0;
   signal_stat->update_req = 0;
  }

  signal_stat->total_num++;
  signal_stat->total_val += pattrib->phy_info.SignalStrength;
  signal_stat->avg_val = signal_stat->total_val / signal_stat->total_num;
 }

}

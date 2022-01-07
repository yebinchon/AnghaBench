
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rx_pkt_attrib {scalar_t__ signal_qual; } ;
struct TYPE_4__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct smooth_rssi_data {size_t total_num; int* elements; size_t index; int total_val; } ;
struct TYPE_6__ {scalar_t__ signal; struct smooth_rssi_data signal_qual_data; } ;
struct _adapter {TYPE_3__ recvpriv; } ;


 size_t PHY_LINKQUALITY_SLID_WIN_MAX ;

__attribute__((used)) static void process_link_qual(struct _adapter *padapter,
         union recv_frame *prframe)
{
 u32 last_evm = 0, tmpVal;
 struct rx_pkt_attrib *pattrib;
 struct smooth_rssi_data *sqd = &padapter->recvpriv.signal_qual_data;

 if (!prframe || !padapter)
  return;
 pattrib = &prframe->u.hdr.attrib;
 if (pattrib->signal_qual != 0) {



  if (sqd->total_num++ >= PHY_LINKQUALITY_SLID_WIN_MAX) {
   sqd->total_num = PHY_LINKQUALITY_SLID_WIN_MAX;
   last_evm = sqd->elements[sqd->index];
   sqd->total_val -= last_evm;
  }
  sqd->total_val += pattrib->signal_qual;
  sqd->elements[sqd->index++] = pattrib->signal_qual;
  if (sqd->index >= PHY_LINKQUALITY_SLID_WIN_MAX)
   sqd->index = 0;


  tmpVal = sqd->total_val / sqd->total_num;
  padapter->recvpriv.signal = (u8)tmpVal;
 }
}

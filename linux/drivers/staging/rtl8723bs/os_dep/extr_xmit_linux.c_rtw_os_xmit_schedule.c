
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; } ;
struct TYPE_4__ {int xmit_comp; TYPE_1__ pending_xmitbuf_queue; } ;
struct adapter {TYPE_2__ xmitpriv; } ;


 int complete (int *) ;
 int list_empty (int *) ;

void rtw_os_xmit_schedule(struct adapter *padapter)
{
 struct adapter *pri_adapter = padapter;

 if (!padapter)
  return;

 if (!list_empty(&padapter->xmitpriv.pending_xmitbuf_queue.queue))
  complete(&pri_adapter->xmitpriv.xmit_comp);
}

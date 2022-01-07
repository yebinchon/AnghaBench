
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct recv_buf {scalar_t__ purb; } ;
struct TYPE_2__ {scalar_t__ precv_buf; } ;
struct _adapter {TYPE_1__ recvpriv; } ;


 int NR_RECVBUFF ;
 int usb_kill_urb (scalar_t__) ;

void r8712_usb_read_port_cancel(struct _adapter *padapter)
{
 int i;
 struct recv_buf *precvbuf;

 precvbuf = (struct recv_buf *)padapter->recvpriv.precv_buf;
 for (i = 0; i < NR_RECVBUFF; i++) {
  if (precvbuf->purb)
   usb_kill_urb(precvbuf->purb);
  precvbuf++;
 }
}

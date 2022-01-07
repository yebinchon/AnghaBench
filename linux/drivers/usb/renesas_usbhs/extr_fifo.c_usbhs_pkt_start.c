
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int USBHSF_PKT_PREPARE ;
 int usbhsf_pkt_handler (struct usbhs_pipe*,int ) ;

void usbhs_pkt_start(struct usbhs_pipe *pipe)
{
 usbhsf_pkt_handler(pipe, USBHSF_PKT_PREPARE);
}

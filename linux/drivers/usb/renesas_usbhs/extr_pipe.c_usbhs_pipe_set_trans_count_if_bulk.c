
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pipe {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int TRCLR ;
 int TRENB ;
 int USB_ENDPOINT_XFER_BULK ;
 int usbhs_pipe_get_maxpacket (struct usbhs_pipe*) ;
 scalar_t__ usbhs_pipe_is_dir_in (struct usbhs_pipe*) ;
 int usbhs_pipe_type_is (struct usbhs_pipe*,int ) ;
 int usbhsp_pipe_tre_set (struct usbhs_pipe*,int,int) ;
 int usbhsp_pipe_trn_set (struct usbhs_pipe*,int,int ) ;

void usbhs_pipe_set_trans_count_if_bulk(struct usbhs_pipe *pipe, int len)
{
 if (!usbhs_pipe_type_is(pipe, USB_ENDPOINT_XFER_BULK))
  return;




 usbhsp_pipe_tre_set(pipe, TRCLR | TRENB, TRCLR);







 if (usbhs_pipe_is_dir_in(pipe)) {
  int maxp = usbhs_pipe_get_maxpacket(pipe);

  usbhsp_pipe_trn_set(pipe, 0xffff, DIV_ROUND_UP(len, maxp));
  usbhsp_pipe_tre_set(pipe, TRENB, TRENB);
 }
}

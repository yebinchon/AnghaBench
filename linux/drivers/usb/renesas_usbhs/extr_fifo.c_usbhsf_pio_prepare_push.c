
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_pkt {int pipe; } ;


 scalar_t__ usbhs_pipe_is_running (int ) ;
 int usbhsf_pio_try_push (struct usbhs_pkt*,int*) ;

__attribute__((used)) static int usbhsf_pio_prepare_push(struct usbhs_pkt *pkt, int *is_done)
{
 if (usbhs_pipe_is_running(pkt->pipe))
  return 0;

 return usbhsf_pio_try_push(pkt, is_done);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_uas {int flags; int * stream; int ep_cmd; int ep_status; int ep_out; int ep_in; } ;


 int UASP_SS_EP_COMP_NUM_STREAMS ;
 int USBG_ENABLED ;
 int uasp_cleanup_one_stream (struct f_uas*,int *) ;
 int uasp_free_cmdreq (struct f_uas*) ;
 int usb_ep_disable (int ) ;

__attribute__((used)) static void uasp_cleanup_old_alt(struct f_uas *fu)
{
 int i;

 if (!(fu->flags & USBG_ENABLED))
  return;

 usb_ep_disable(fu->ep_in);
 usb_ep_disable(fu->ep_out);
 usb_ep_disable(fu->ep_status);
 usb_ep_disable(fu->ep_cmd);

 for (i = 0; i < UASP_SS_EP_COMP_NUM_STREAMS; i++)
  uasp_cleanup_one_stream(fu, &fu->stream[i]);
 uasp_free_cmdreq(fu);
}

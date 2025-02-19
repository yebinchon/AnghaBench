
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int req; } ;
struct f_uas {int flags; int * stream; TYPE_1__ cmd; int ep_cmd; } ;


 int GFP_ATOMIC ;
 int UASP_SS_EP_COMP_NUM_STREAMS ;
 int USBG_USE_STREAMS ;
 int pr_err (char*) ;
 int uasp_alloc_cmd (struct f_uas*) ;
 int uasp_alloc_stream_res (struct f_uas*,int *) ;
 int uasp_cleanup_one_stream (struct f_uas*,int *) ;
 int uasp_free_cmdreq (struct f_uas*) ;
 int uasp_setup_stream_res (struct f_uas*,int) ;
 int usb_ep_queue (int ,int ,int ) ;

__attribute__((used)) static int uasp_prepare_reqs(struct f_uas *fu)
{
 int ret;
 int i;
 int max_streams;

 if (fu->flags & USBG_USE_STREAMS)
  max_streams = UASP_SS_EP_COMP_NUM_STREAMS;
 else
  max_streams = 1;

 for (i = 0; i < max_streams; i++) {
  ret = uasp_alloc_stream_res(fu, &fu->stream[i]);
  if (ret)
   goto err_cleanup;
 }

 ret = uasp_alloc_cmd(fu);
 if (ret)
  goto err_free_stream;
 uasp_setup_stream_res(fu, max_streams);

 ret = usb_ep_queue(fu->ep_cmd, fu->cmd.req, GFP_ATOMIC);
 if (ret)
  goto err_free_stream;

 return 0;

err_free_stream:
 uasp_free_cmdreq(fu);

err_cleanup:
 if (i) {
  do {
   uasp_cleanup_one_stream(fu, &fu->stream[i - 1]);
   i--;
  } while (i);
 }
 pr_err("UASP: endpoint setup failed\n");
 return ret;
}

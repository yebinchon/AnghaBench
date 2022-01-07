
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usb_request {int list; } ;
struct cdns3_endpoint {int pending_req_list; } ;
struct cdns3_device {TYPE_1__* regs; int ep0_stage; struct cdns3_endpoint** eps; } ;
struct TYPE_2__ {int ep_cmd; } ;


 int CDNS3_SETUP_STAGE ;
 int EP_CMD_ERDY ;
 int EP_CMD_REQ_CMPL ;
 int EP_CMD_SSTALL ;
 int cdns3_allow_enable_l1 (struct cdns3_device*,int) ;
 struct usb_request* cdns3_next_request (int *) ;
 int cdns3_prepare_setup_packet (struct cdns3_device*) ;
 int cdns3_select_ep (struct cdns3_device*,int) ;
 int list_del_init (int *) ;
 int trace_cdns3_halt (struct cdns3_endpoint*,scalar_t__,int ) ;
 int writel (int,int *) ;

__attribute__((used)) static void cdns3_ep0_complete_setup(struct cdns3_device *priv_dev,
         u8 send_stall, u8 send_erdy)
{
 struct cdns3_endpoint *priv_ep = priv_dev->eps[0];
 struct usb_request *request;

 request = cdns3_next_request(&priv_ep->pending_req_list);
 if (request)
  list_del_init(&request->list);

 if (send_stall) {
  trace_cdns3_halt(priv_ep, send_stall, 0);

  cdns3_select_ep(priv_dev, 0x00);
  writel(EP_CMD_SSTALL, &priv_dev->regs->ep_cmd);
 } else {
  cdns3_prepare_setup_packet(priv_dev);
 }

 priv_dev->ep0_stage = CDNS3_SETUP_STAGE;
 writel((send_erdy ? EP_CMD_ERDY : 0) | EP_CMD_REQ_CMPL,
        &priv_dev->regs->ep_cmd);

 cdns3_allow_enable_l1(priv_dev, 1);
}

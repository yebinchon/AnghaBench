
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ actual; scalar_t__ length; } ;
struct dwc2_hsotg_req {TYPE_1__ req; } ;
struct dwc2_hsotg_ep {scalar_t__ index; int dir_in; struct dwc2_hsotg_req* req; } ;
struct dwc2_hsotg {int dev; } ;


 int dev_dbg (int ,char*,scalar_t__) ;
 int dwc2_hsotg_ctrl_epint (struct dwc2_hsotg*,scalar_t__,int ,int ) ;
 int dwc2_hsotg_write_fifo (struct dwc2_hsotg*,struct dwc2_hsotg_ep*,struct dwc2_hsotg_req*) ;

__attribute__((used)) static int dwc2_hsotg_trytx(struct dwc2_hsotg *hsotg,
       struct dwc2_hsotg_ep *hs_ep)
{
 struct dwc2_hsotg_req *hs_req = hs_ep->req;

 if (!hs_ep->dir_in || !hs_req) {




  if (hs_ep->index != 0)
   dwc2_hsotg_ctrl_epint(hsotg, hs_ep->index,
           hs_ep->dir_in, 0);
  return 0;
 }

 if (hs_req->req.actual < hs_req->req.length) {
  dev_dbg(hsotg->dev, "trying to write more for ep%d\n",
   hs_ep->index);
  return dwc2_hsotg_write_fifo(hsotg, hs_ep, hs_req);
 }

 return 0;
}

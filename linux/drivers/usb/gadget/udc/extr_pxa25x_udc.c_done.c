
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; int length; int actual; } ;
struct pxa25x_request {TYPE_2__ req; int queue; } ;
struct TYPE_4__ {int name; } ;
struct pxa25x_ep {unsigned int stopped; TYPE_1__ ep; } ;


 int DBG (int ,char*,int ,TYPE_2__*,int,int ,int ) ;
 int DBG_VERBOSE ;
 int EINPROGRESS ;
 int ESHUTDOWN ;
 scalar_t__ likely (int) ;
 int list_del_init (int *) ;
 int usb_gadget_giveback_request (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void done(struct pxa25x_ep *ep, struct pxa25x_request *req, int status)
{
 unsigned stopped = ep->stopped;

 list_del_init(&req->queue);

 if (likely (req->req.status == -EINPROGRESS))
  req->req.status = status;
 else
  status = req->req.status;

 if (status && status != -ESHUTDOWN)
  DBG(DBG_VERBOSE, "complete %s req %p stat %d len %u/%u\n",
   ep->ep.name, &req->req, status,
   req->req.actual, req->req.length);


 ep->stopped = 1;
 usb_gadget_giveback_request(&ep->ep, &req->req);
 ep->stopped = stopped;
}

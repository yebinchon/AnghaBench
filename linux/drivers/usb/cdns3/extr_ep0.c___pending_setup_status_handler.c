
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int (* complete ) (int *,struct usb_request*) ;} ;
struct cdns3_device {scalar_t__ status_completion_no_call; TYPE_1__** eps; struct usb_request* pending_status_request; } ;
struct TYPE_2__ {int endpoint; } ;


 int stub1 (int *,struct usb_request*) ;

__attribute__((used)) static void __pending_setup_status_handler(struct cdns3_device *priv_dev)
{
 struct usb_request *request = priv_dev->pending_status_request;

 if (priv_dev->status_completion_no_call && request &&
     request->complete) {
  request->complete(&priv_dev->eps[0]->endpoint, request);
  priv_dev->status_completion_no_call = 0;
 }
}

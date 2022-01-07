
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xenbus_device {int dev; } ;
struct xen_pvcalls_response {int cmd; int ret; int req_id; } ;
struct xen_pvcalls_request {int cmd; int req_id; } ;
struct TYPE_2__ {int rsp_prod_pvt; } ;
struct pvcalls_fedata {TYPE_1__ ring; } ;


 int ENOTSUPP ;







 struct xen_pvcalls_response* RING_GET_RESPONSE (TYPE_1__*,int ) ;
 struct pvcalls_fedata* dev_get_drvdata (int *) ;
 int pvcalls_back_accept (struct xenbus_device*,struct xen_pvcalls_request*) ;
 int pvcalls_back_bind (struct xenbus_device*,struct xen_pvcalls_request*) ;
 int pvcalls_back_connect (struct xenbus_device*,struct xen_pvcalls_request*) ;
 int pvcalls_back_listen (struct xenbus_device*,struct xen_pvcalls_request*) ;
 int pvcalls_back_poll (struct xenbus_device*,struct xen_pvcalls_request*) ;
 int pvcalls_back_release (struct xenbus_device*,struct xen_pvcalls_request*) ;
 int pvcalls_back_socket (struct xenbus_device*,struct xen_pvcalls_request*) ;

__attribute__((used)) static int pvcalls_back_handle_cmd(struct xenbus_device *dev,
       struct xen_pvcalls_request *req)
{
 int ret = 0;

 switch (req->cmd) {
 case 128:
  ret = pvcalls_back_socket(dev, req);
  break;
 case 132:
  ret = pvcalls_back_connect(dev, req);
  break;
 case 129:
  ret = pvcalls_back_release(dev, req);
  break;
 case 133:
  ret = pvcalls_back_bind(dev, req);
  break;
 case 131:
  ret = pvcalls_back_listen(dev, req);
  break;
 case 134:
  ret = pvcalls_back_accept(dev, req);
  break;
 case 130:
  ret = pvcalls_back_poll(dev, req);
  break;
 default:
 {
  struct pvcalls_fedata *fedata;
  struct xen_pvcalls_response *rsp;

  fedata = dev_get_drvdata(&dev->dev);
  rsp = RING_GET_RESPONSE(
    &fedata->ring, fedata->ring.rsp_prod_pvt++);
  rsp->req_id = req->req_id;
  rsp->cmd = req->cmd;
  rsp->ret = -ENOTSUPP;
  break;
 }
 }
 return ret;
}

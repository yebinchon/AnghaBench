
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsg_common {TYPE_1__* ep0; int ep0req; } ;
struct TYPE_2__ {int name; struct fsg_common* driver_data; } ;


 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int WARNING (struct fsg_common*,char*,int ,int) ;
 int usb_ep_queue (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int ep0_queue(struct fsg_common *common)
{
 int rc;

 rc = usb_ep_queue(common->ep0, common->ep0req, GFP_ATOMIC);
 common->ep0->driver_data = common;
 if (rc != 0 && rc != -ESHUTDOWN) {

  WARNING(common, "error in submission: %s --> %d\n",
   common->ep0->name, rc);
 }
 return rc;
}

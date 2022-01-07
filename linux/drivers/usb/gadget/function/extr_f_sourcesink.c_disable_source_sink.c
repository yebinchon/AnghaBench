
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_composite_dev {int dummy; } ;
struct TYPE_4__ {int name; TYPE_1__* config; } ;
struct f_sourcesink {TYPE_2__ function; int iso_out_ep; int iso_in_ep; int out_ep; int in_ep; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int VDBG (struct usb_composite_dev*,char*,int ) ;
 int disable_endpoints (struct usb_composite_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static void disable_source_sink(struct f_sourcesink *ss)
{
 struct usb_composite_dev *cdev;

 cdev = ss->function.config->cdev;
 disable_endpoints(cdev, ss->in_ep, ss->out_ep, ss->iso_in_ep,
   ss->iso_out_ep);
 VDBG(cdev, "%s disabled\n", ss->function.name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type_control; int dir_in; int dir_out; int type_iso; int type_bulk; int type_int; } ;
struct TYPE_6__ {int maxpacket; TYPE_2__ caps; int * desc; int * ops; int name; int ep_list; } ;
struct s3c_hsudc_ep {int bEndpointAddress; TYPE_3__ ep; scalar_t__ wedge; scalar_t__ stopped; scalar_t__ fifo; int name; struct s3c_hsudc* dev; int queue; } ;
struct TYPE_4__ {int ep_list; } ;
struct s3c_hsudc {scalar_t__ regs; TYPE_1__ gadget; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ S3C_BR (int) ;
 scalar_t__ S3C_MPR ;
 int USB_DIR_IN ;
 char* ep0name ;
 int list_add_tail (int *,int *) ;
 int s3c_hsudc_ep_ops ;
 int set_index (struct s3c_hsudc*,int) ;
 int snprintf (int ,int,char*,...) ;
 int usb_ep_set_maxpacket_limit (TYPE_3__*,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3c_hsudc_initep(struct s3c_hsudc *hsudc,
    struct s3c_hsudc_ep *hsep, int epnum)
{
 char *dir;

 if ((epnum % 2) == 0) {
  dir = "out";
 } else {
  dir = "in";
  hsep->bEndpointAddress = USB_DIR_IN;
 }

 hsep->bEndpointAddress |= epnum;
 if (epnum)
  snprintf(hsep->name, sizeof(hsep->name), "ep%d%s", epnum, dir);
 else
  snprintf(hsep->name, sizeof(hsep->name), "%s", ep0name);

 INIT_LIST_HEAD(&hsep->queue);
 INIT_LIST_HEAD(&hsep->ep.ep_list);
 if (epnum)
  list_add_tail(&hsep->ep.ep_list, &hsudc->gadget.ep_list);

 hsep->dev = hsudc;
 hsep->ep.name = hsep->name;
 usb_ep_set_maxpacket_limit(&hsep->ep, epnum ? 512 : 64);
 hsep->ep.ops = &s3c_hsudc_ep_ops;
 hsep->fifo = hsudc->regs + S3C_BR(epnum);
 hsep->ep.desc = ((void*)0);
 hsep->stopped = 0;
 hsep->wedge = 0;

 if (epnum == 0) {
  hsep->ep.caps.type_control = 1;
  hsep->ep.caps.dir_in = 1;
  hsep->ep.caps.dir_out = 1;
 } else {
  hsep->ep.caps.type_iso = 1;
  hsep->ep.caps.type_bulk = 1;
  hsep->ep.caps.type_int = 1;
 }

 if (epnum & 1)
  hsep->ep.caps.dir_in = 1;
 else
  hsep->ep.caps.dir_out = 1;

 set_index(hsudc, epnum);
 writel(hsep->ep.maxpacket, hsudc->regs + S3C_MPR);
}

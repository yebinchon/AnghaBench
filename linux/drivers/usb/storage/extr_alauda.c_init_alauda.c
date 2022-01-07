
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_host_interface {TYPE_2__* endpoint; } ;
struct us_data {int pusb_dev; int extra_destructor; scalar_t__ extra; TYPE_3__* pusb_intf; } ;
struct alauda_info {int wr_ep; } ;
struct TYPE_6__ {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bEndpointAddress; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int GFP_NOIO ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int alauda_info_destructor ;
 scalar_t__ kzalloc (int,int ) ;
 int nand_init_ecc () ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int init_alauda(struct us_data *us)
{
 struct alauda_info *info;
 struct usb_host_interface *altsetting = us->pusb_intf->cur_altsetting;
 nand_init_ecc();

 us->extra = kzalloc(sizeof(struct alauda_info), GFP_NOIO);
 if (!us->extra)
  return USB_STOR_TRANSPORT_ERROR;

 info = (struct alauda_info *) us->extra;
 us->extra_destructor = alauda_info_destructor;

 info->wr_ep = usb_sndbulkpipe(us->pusb_dev,
  altsetting->endpoint[0].desc.bEndpointAddress
  & USB_ENDPOINT_NUMBER_MASK);

 return USB_STOR_TRANSPORT_GOOD;
}

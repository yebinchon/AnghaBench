
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct us_data {char* transport_name; scalar_t__ max_lun; int transport; scalar_t__ extra; int extra_destructor; } ;
struct ene_ub6250_info {int* bbuf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int REG_CARD_STATUS ;
 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_XFER_GOOD ;
 int ene_get_card_type (struct us_data*,int ,int*) ;
 int ene_transport ;
 int ene_ub6250_host_template ;
 int ene_ub6250_info_destructor ;
 int ene_ub6250_unusual_dev_list ;
 struct usb_device_id const* ene_ub6250_usb_ids ;
 int kfree (scalar_t__) ;
 int* kmalloc (int,int ) ;
 scalar_t__ kzalloc (int,int ) ;
 int pr_info (char*) ;
 int usb_stor_disconnect (struct usb_interface*) ;
 int usb_stor_probe1 (struct us_data**,struct usb_interface*,struct usb_device_id const*,int,int *) ;
 int usb_stor_probe2 (struct us_data*) ;

__attribute__((used)) static int ene_ub6250_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 int result;
 u8 misc_reg03;
 struct us_data *us;
 struct ene_ub6250_info *info;

 result = usb_stor_probe1(&us, intf, id,
     (id - ene_ub6250_usb_ids) + ene_ub6250_unusual_dev_list,
     &ene_ub6250_host_template);
 if (result)
  return result;


 us->extra = kzalloc(sizeof(struct ene_ub6250_info), GFP_KERNEL);
 if (!us->extra)
  return -ENOMEM;
 us->extra_destructor = ene_ub6250_info_destructor;

 info = (struct ene_ub6250_info *)(us->extra);
 info->bbuf = kmalloc(512, GFP_KERNEL);
 if (!info->bbuf) {
  kfree(us->extra);
  return -ENOMEM;
 }

 us->transport_name = "ene_ub6250";
 us->transport = ene_transport;
 us->max_lun = 0;

 result = usb_stor_probe2(us);
 if (result)
  return result;


 result = ene_get_card_type(us, REG_CARD_STATUS, info->bbuf);
 if (result != USB_STOR_XFER_GOOD) {
  usb_stor_disconnect(intf);
  return USB_STOR_TRANSPORT_ERROR;
 }

 misc_reg03 = info->bbuf[0];
 if (!(misc_reg03 & 0x01)) {
  pr_info("ums_eneub6250: This driver only supports SD/MS cards. "
   "It does not support SM cards.\n");
 }

 return result;
}

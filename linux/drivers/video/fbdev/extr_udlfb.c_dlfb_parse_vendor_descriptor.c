
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct usb_interface {int dev; int cur_altsetting; } ;
struct dlfb_data {int sku_pixel_limit; } ;


 int GFP_KERNEL ;
 int MAX_VENDOR_DESCRIPTOR_SIZE ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,...) ;
 int dev_warn (int *,char*,int) ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (char*) ;
 char* kzalloc (int ,int ) ;
 int usb_get_descriptor (int ,int,int ,char*,int ) ;
 scalar_t__ usb_get_extra_descriptor (int ,int,char**) ;

__attribute__((used)) static int dlfb_parse_vendor_descriptor(struct dlfb_data *dlfb,
     struct usb_interface *intf)
{
 char *desc;
 char *buf;
 char *desc_end;
 int total_len;

 buf = kzalloc(MAX_VENDOR_DESCRIPTOR_SIZE, GFP_KERNEL);
 if (!buf)
  return 0;
 desc = buf;

 total_len = usb_get_descriptor(interface_to_usbdev(intf),
     0x5f,
     0, desc, MAX_VENDOR_DESCRIPTOR_SIZE);


 if (total_len < 0) {
  if (0 == usb_get_extra_descriptor(intf->cur_altsetting,
   0x5f, &desc))
   total_len = (int) desc[0];
 }

 if (total_len > 5) {
  dev_info(&intf->dev,
    "vendor descriptor length: %d data: %11ph\n",
    total_len, desc);

  if ((desc[0] != total_len) ||
      (desc[1] != 0x5f) ||
      (desc[2] != 0x01) ||
      (desc[3] != 0x00) ||
      (desc[4] != total_len - 2))
   goto unrecognized;

  desc_end = desc + total_len;
  desc += 5;

  while (desc < desc_end) {
   u8 length;
   u16 key;

   key = *desc++;
   key |= (u16)*desc++ << 8;
   length = *desc++;

   switch (key) {
   case 0x0200: {
    u32 max_area = *desc++;
    max_area |= (u32)*desc++ << 8;
    max_area |= (u32)*desc++ << 16;
    max_area |= (u32)*desc++ << 24;
    dev_warn(&intf->dev,
      "DL chip limited to %d pixel modes\n",
      max_area);
    dlfb->sku_pixel_limit = max_area;
    break;
   }
   default:
    break;
   }
   desc += length;
  }
 } else {
  dev_info(&intf->dev, "vendor descriptor not available (%d)\n",
    total_len);
 }

 goto success;

unrecognized:

 dev_err(&intf->dev, "Unrecognized vendor firmware descriptor\n");

success:
 kfree(buf);
 return 1;
}

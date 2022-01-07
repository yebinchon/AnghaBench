
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;



 char* ADI930_FIRMWARE ;
 char* EAGLE_FIRMWARE ;



 char* EAGLE_III_FIRMWARE ;
 char* EAGLE_II_FIRMWARE ;

 char* EAGLE_IV_FIRMWARE ;
 char* EAGLE_I_FIRMWARE ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int request_firmware_nowait (int ,int,char*,int *,int ,struct usb_device*,int ) ;
 int uea_enters (struct usb_device*) ;
 int uea_err (struct usb_device*,char*,char*) ;
 int uea_info (struct usb_device*,char*,...) ;
 int uea_leaves (struct usb_device*) ;
 int uea_upload_pre_firmware ;

__attribute__((used)) static int uea_load_firmware(struct usb_device *usb, unsigned int ver)
{
 int ret;
 char *fw_name = EAGLE_FIRMWARE;

 uea_enters(usb);
 uea_info(usb, "pre-firmware device, uploading firmware\n");

 switch (ver) {
 case 132:
  fw_name = ADI930_FIRMWARE;
  break;
 case 131:
  fw_name = EAGLE_I_FIRMWARE;
  break;
 case 130:
  fw_name = EAGLE_II_FIRMWARE;
  break;
 case 129:
  fw_name = EAGLE_III_FIRMWARE;
  break;
 case 128:
  fw_name = EAGLE_IV_FIRMWARE;
  break;
 }

 ret = request_firmware_nowait(THIS_MODULE, 1, fw_name, &usb->dev,
     GFP_KERNEL, usb,
     uea_upload_pre_firmware);
 if (ret)
  uea_err(usb, "firmware %s is not available\n", fw_name);
 else
  uea_info(usb, "loading firmware %s\n", fw_name);

 uea_leaves(usb);
 return ret;
}

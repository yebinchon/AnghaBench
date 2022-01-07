
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zd_usb {int dummy; } ;
struct usb_device {int dev; } ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
typedef int fw_name ;


 int E2P_BOOT_CODE_OFFSET ;
 scalar_t__ E2P_START ;
 scalar_t__ FW_START ;
 int REBOOT ;
 int get_fw_name (struct zd_usb*,char*,int,char*) ;
 int release_firmware (struct firmware const*) ;
 int request_fw_file (struct firmware const**,int ,int *) ;
 int upload_code (struct usb_device*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 struct usb_device* zd_usb_to_usbdev (struct zd_usb*) ;

__attribute__((used)) static int handle_version_mismatch(struct zd_usb *usb,
 const struct firmware *ub_fw)
{
 struct usb_device *udev = zd_usb_to_usbdev(usb);
 const struct firmware *ur_fw = ((void*)0);
 int offset;
 int r = 0;
 char fw_name[128];

 r = request_fw_file(&ur_fw,
  get_fw_name(usb, fw_name, sizeof(fw_name), "ur"),
  &udev->dev);
 if (r)
  goto error;

 r = upload_code(udev, ur_fw->data, ur_fw->size, FW_START, REBOOT);
 if (r)
  goto error;

 offset = (E2P_BOOT_CODE_OFFSET * sizeof(u16));
 r = upload_code(udev, ub_fw->data + offset, ub_fw->size - offset,
  E2P_START + E2P_BOOT_CODE_OFFSET, REBOOT);






error:
 release_firmware(ur_fw);
 return r;
}

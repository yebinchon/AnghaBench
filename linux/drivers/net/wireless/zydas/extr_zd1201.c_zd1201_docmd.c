
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int endp_out2; int usb; } ;
struct urb {int dummy; } ;
typedef int __le32 ;
typedef int __le16 ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int ZD1201_USB_CMDREQ ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,unsigned char*,int,int ,struct zd1201*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int zd1201_usbfree ;

__attribute__((used)) static int zd1201_docmd(struct zd1201 *zd, int cmd, int parm0,
   int parm1, int parm2)
{
 unsigned char *command;
 int ret;
 struct urb *urb;

 command = kmalloc(16, GFP_ATOMIC);
 if (!command)
  return -ENOMEM;

 *((__le32*)command) = cpu_to_le32(ZD1201_USB_CMDREQ);
 *((__le16*)&command[4]) = cpu_to_le16(cmd);
 *((__le16*)&command[6]) = cpu_to_le16(parm0);
 *((__le16*)&command[8]) = cpu_to_le16(parm1);
 *((__le16*)&command[10])= cpu_to_le16(parm2);

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb) {
  kfree(command);
  return -ENOMEM;
 }
 usb_fill_bulk_urb(urb, zd->usb, usb_sndbulkpipe(zd->usb, zd->endp_out2),
     command, 16, zd1201_usbfree, zd);
 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret) {
  kfree(command);
  usb_free_urb(urb);
 }

 return ret;
}

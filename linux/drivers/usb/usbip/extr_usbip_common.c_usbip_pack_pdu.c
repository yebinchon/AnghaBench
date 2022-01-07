
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_header {int dummy; } ;
struct urb {int dummy; } ;




 int pr_err (char*) ;
 int usbip_pack_cmd_submit (struct usbip_header*,struct urb*,int) ;
 int usbip_pack_ret_submit (struct usbip_header*,struct urb*,int) ;

void usbip_pack_pdu(struct usbip_header *pdu, struct urb *urb, int cmd,
      int pack)
{
 switch (cmd) {
 case 129:
  usbip_pack_cmd_submit(pdu, urb, pack);
  break;
 case 128:
  usbip_pack_ret_submit(pdu, urb, pack);
  break;
 default:

  pr_err("unknown command\n");
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dev; } ;
struct usb_cdc_union_desc {int dummy; } ;
struct usb_cdc_parsed_header {int phonet_magic_present; struct usb_cdc_ether_desc* usb_cdc_ether_desc; struct usb_cdc_mdlm_desc* usb_cdc_mdlm_desc; struct usb_cdc_mdlm_detail_desc* usb_cdc_mdlm_detail_desc; struct usb_cdc_header_desc* usb_cdc_header_desc; struct usb_cdc_union_desc* usb_cdc_union_desc; struct usb_cdc_mbim_extended_desc* usb_cdc_mbim_extended_desc; struct usb_cdc_mbim_desc* usb_cdc_mbim_desc; struct usb_cdc_ncm_desc* usb_cdc_ncm_desc; struct usb_cdc_dmm_desc* usb_cdc_dmm_desc; struct usb_cdc_call_mgmt_descriptor* usb_cdc_call_mgmt_descriptor; struct usb_cdc_acm_descriptor* usb_cdc_acm_descriptor; struct usb_cdc_country_functional_desc* usb_cdc_country_functional_desc; } ;
struct usb_cdc_ncm_desc {int dummy; } ;
struct usb_cdc_mdlm_detail_desc {int dummy; } ;
struct usb_cdc_mdlm_desc {int dummy; } ;
struct usb_cdc_mbim_extended_desc {int dummy; } ;
struct usb_cdc_mbim_desc {int dummy; } ;
struct usb_cdc_header_desc {int dummy; } ;
struct usb_cdc_ether_desc {int dummy; } ;
struct usb_cdc_dmm_desc {int dummy; } ;
struct usb_cdc_country_functional_desc {int dummy; } ;
struct usb_cdc_call_mgmt_descriptor {int dummy; } ;
struct usb_cdc_acm_descriptor {int dummy; } ;



 int EINVAL ;
 int USB_DT_CS_INTERFACE ;
 int dev_dbg (int *,char*,int,unsigned int) ;
 int dev_err (int *,char*) ;
 int memset (struct usb_cdc_parsed_header*,int,int) ;

int cdc_parse_cdc_header(struct usb_cdc_parsed_header *hdr,
    struct usb_interface *intf,
    u8 *buffer,
    int buflen)
{

 struct usb_cdc_union_desc *union_header = ((void*)0);


 struct usb_cdc_header_desc *header = ((void*)0);
 struct usb_cdc_ether_desc *ether = ((void*)0);
 struct usb_cdc_mdlm_detail_desc *detail = ((void*)0);
 struct usb_cdc_mdlm_desc *desc = ((void*)0);

 unsigned int elength;
 int cnt = 0;

 memset(hdr, 0x00, sizeof(struct usb_cdc_parsed_header));
 hdr->phonet_magic_present = 0;
 while (buflen > 0) {
  elength = buffer[0];
  if (!elength) {
   dev_err(&intf->dev, "skipping garbage byte\n");
   elength = 1;
   goto next_desc;
  }
  if ((buflen < elength) || (elength < 3)) {
   dev_err(&intf->dev, "invalid descriptor buffer length\n");
   break;
  }
  if (buffer[1] != USB_DT_CS_INTERFACE) {
   dev_err(&intf->dev, "skipping garbage\n");
   goto next_desc;
  }

  switch (buffer[2]) {
  case 128:
   if (elength < sizeof(struct usb_cdc_union_desc))
    goto next_desc;
   if (union_header) {
    dev_err(&intf->dev, "More than one union descriptor, skipping ...\n");
    goto next_desc;
   }
   union_header = (struct usb_cdc_union_desc *)buffer;
   break;
  case 137:
   if (elength < sizeof(struct usb_cdc_country_functional_desc))
    goto next_desc;
   hdr->usb_cdc_country_functional_desc =
    (struct usb_cdc_country_functional_desc *)buffer;
   break;
  case 134:
   if (elength != sizeof(struct usb_cdc_header_desc))
    goto next_desc;
   if (header)
    return -EINVAL;
   header = (struct usb_cdc_header_desc *)buffer;
   break;
  case 139:
   if (elength < sizeof(struct usb_cdc_acm_descriptor))
    goto next_desc;
   hdr->usb_cdc_acm_descriptor =
    (struct usb_cdc_acm_descriptor *)buffer;
   break;
  case 135:
   if (elength != sizeof(struct usb_cdc_ether_desc))
    goto next_desc;
   if (ether)
    return -EINVAL;
   ether = (struct usb_cdc_ether_desc *)buffer;
   break;
  case 138:
   if (elength < sizeof(struct usb_cdc_call_mgmt_descriptor))
    goto next_desc;
   hdr->usb_cdc_call_mgmt_descriptor =
    (struct usb_cdc_call_mgmt_descriptor *)buffer;
   break;
  case 136:
   if (elength < sizeof(struct usb_cdc_dmm_desc))
    goto next_desc;
   hdr->usb_cdc_dmm_desc =
    (struct usb_cdc_dmm_desc *)buffer;
   break;
  case 130:
   if (elength < sizeof(struct usb_cdc_mdlm_desc))
    goto next_desc;
   if (desc)
    return -EINVAL;
   desc = (struct usb_cdc_mdlm_desc *)buffer;
   break;
  case 131:
   if (elength < sizeof(struct usb_cdc_mdlm_detail_desc))
    goto next_desc;
   if (detail)
    return -EINVAL;
   detail = (struct usb_cdc_mdlm_detail_desc *)buffer;
   break;
  case 129:
   if (elength < sizeof(struct usb_cdc_ncm_desc))
    goto next_desc;
   hdr->usb_cdc_ncm_desc = (struct usb_cdc_ncm_desc *)buffer;
   break;
  case 132:
   if (elength < sizeof(struct usb_cdc_mbim_desc))
    goto next_desc;

   hdr->usb_cdc_mbim_desc = (struct usb_cdc_mbim_desc *)buffer;
   break;
  case 133:
   if (elength < sizeof(struct usb_cdc_mbim_extended_desc))
    break;
   hdr->usb_cdc_mbim_extended_desc =
    (struct usb_cdc_mbim_extended_desc *)buffer;
   break;
  case 140:
   hdr->phonet_magic_present = 1;
   break;
  default:




   dev_dbg(&intf->dev, "Ignoring descriptor: type %02x, length %ud\n",
     buffer[2], elength);
   goto next_desc;
  }
  cnt++;
next_desc:
  buflen -= elength;
  buffer += elength;
 }
 hdr->usb_cdc_union_desc = union_header;
 hdr->usb_cdc_header_desc = header;
 hdr->usb_cdc_mdlm_detail_desc = detail;
 hdr->usb_cdc_mdlm_desc = desc;
 hdr->usb_cdc_ether_desc = ether;
 return cnt;
}

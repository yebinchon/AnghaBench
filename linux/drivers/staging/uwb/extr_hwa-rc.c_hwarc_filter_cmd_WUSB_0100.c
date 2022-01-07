
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rccb {int wCommand; } ;
struct uwb_rc {int dummy; } ;


 int ENOANO ;


 int hwarc_filter_cmd_scan_WUSB_0100 (struct uwb_rc*,struct uwb_rccb**,size_t*) ;
 int hwarc_filter_cmd_set_drp_ie_WUSB_0100 (struct uwb_rc*,struct uwb_rccb**,size_t*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static
int hwarc_filter_cmd_WUSB_0100(struct uwb_rc *rc, struct uwb_rccb **header,
          size_t *size)
{
 int result;
 struct uwb_rccb *rccb = *header;
 int cmd = le16_to_cpu(rccb->wCommand);
 switch (cmd) {
 case 129:
  result = hwarc_filter_cmd_scan_WUSB_0100(rc, header, size);
  break;
 case 128:
  result = hwarc_filter_cmd_set_drp_ie_WUSB_0100(rc, header, size);
  break;
 default:
  result = -ENOANO;
  break;
 }
 return result;
}

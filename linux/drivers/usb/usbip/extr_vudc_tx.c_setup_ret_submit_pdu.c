
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_header {int base; } ;
struct urbp {int urb; int seqnum; } ;


 int USBIP_RET_SUBMIT ;
 int setup_base_pdu (int *,int ,int ) ;
 int usbip_pack_pdu (struct usbip_header*,int ,int ,int) ;

__attribute__((used)) static void setup_ret_submit_pdu(struct usbip_header *rpdu, struct urbp *urb_p)
{
 setup_base_pdu(&rpdu->base, USBIP_RET_SUBMIT, urb_p->seqnum);
 usbip_pack_pdu(rpdu, urb_p->urb, USBIP_RET_SUBMIT, 1);
}

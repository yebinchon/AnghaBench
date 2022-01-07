
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v_unlink {int status; int seqnum; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ ret_unlink; } ;
struct usbip_header {TYPE_2__ u; int base; } ;


 int USBIP_RET_UNLINK ;
 int setup_base_pdu (int *,int ,int ) ;

__attribute__((used)) static void setup_ret_unlink_pdu(struct usbip_header *rpdu,
     struct v_unlink *unlink)
{
 setup_base_pdu(&rpdu->base, USBIP_RET_UNLINK, unlink->seqnum);
 rpdu->u.ret_unlink.status = unlink->status;
}

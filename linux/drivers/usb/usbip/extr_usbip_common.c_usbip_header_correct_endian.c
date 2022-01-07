
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ret_unlink; int cmd_unlink; int ret_submit; int cmd_submit; } ;
struct TYPE_4__ {int command; } ;
struct usbip_header {TYPE_1__ u; TYPE_2__ base; } ;
typedef int __u32 ;






 int correct_endian_basic (TYPE_2__*,int) ;
 int correct_endian_cmd_submit (int *,int) ;
 int correct_endian_cmd_unlink (int *,int) ;
 int correct_endian_ret_submit (int *,int) ;
 int correct_endian_ret_unlink (int *,int) ;
 int pr_err (char*) ;

void usbip_header_correct_endian(struct usbip_header *pdu, int send)
{
 __u32 cmd = 0;

 if (send)
  cmd = pdu->base.command;

 correct_endian_basic(&pdu->base, send);

 if (!send)
  cmd = pdu->base.command;

 switch (cmd) {
 case 131:
  correct_endian_cmd_submit(&pdu->u.cmd_submit, send);
  break;
 case 129:
  correct_endian_ret_submit(&pdu->u.ret_submit, send);
  break;
 case 130:
  correct_endian_cmd_unlink(&pdu->u.cmd_unlink, send);
  break;
 case 128:
  correct_endian_ret_unlink(&pdu->u.ret_unlink, send);
  break;
 default:

  pr_err("unknown command\n");
  break;
 }
}

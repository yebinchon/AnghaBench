
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct ast_vhub_ep {struct ast_vhub* vhub; } ;
struct ast_vhub {TYPE_1__* ports; } ;
typedef enum std_req_rc { ____Placeholder_std_req_rc } std_req_rc ;
struct TYPE_2__ {int status; int change; } ;


 size_t AST_VHUB_NUM_PORTS ;
 int EPDBG (struct ast_vhub_ep*,char*,int,int) ;
 int USB_PORT_STAT_POWER ;
 int ast_vhub_simple_reply (struct ast_vhub_ep*,int,int,int,int) ;
 int std_req_stall ;

__attribute__((used)) static enum std_req_rc ast_vhub_get_port_stat(struct ast_vhub_ep *ep,
           u8 port)
{
 struct ast_vhub *vhub = ep->vhub;
 u16 stat, chg;

 if (port == 0 || port > AST_VHUB_NUM_PORTS)
  return std_req_stall;
 port--;

 stat = vhub->ports[port].status;
 chg = vhub->ports[port].change;


 stat |= USB_PORT_STAT_POWER;

 EPDBG(ep, " port status=%04x change=%04x\n", stat, chg);

 return ast_vhub_simple_reply(ep,
         stat & 0xff,
         stat >> 8,
         chg & 0xff,
         chg >> 8);
}

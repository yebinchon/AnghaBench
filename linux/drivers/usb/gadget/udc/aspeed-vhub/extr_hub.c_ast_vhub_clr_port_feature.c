
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct ast_vhub_port {int status; unsigned int change; int dev; } ;
struct ast_vhub_ep {struct ast_vhub* vhub; } ;
struct ast_vhub {struct ast_vhub_port* ports; } ;
typedef enum std_req_rc { ____Placeholder_std_req_rc } std_req_rc ;


 size_t AST_VHUB_NUM_PORTS ;
 int USB_PORT_STAT_ENABLE ;
 int USB_PORT_STAT_SUSPEND ;
 int ast_vhub_change_port_stat (struct ast_vhub*,size_t,int,int ,int) ;
 int ast_vhub_dev_resume (int *) ;
 int ast_vhub_dev_suspend (int *) ;
 int ast_vhub_update_hub_ep1 (struct ast_vhub*,size_t) ;
 int std_req_complete ;
 int std_req_stall ;

__attribute__((used)) static enum std_req_rc ast_vhub_clr_port_feature(struct ast_vhub_ep *ep,
       u8 port, u16 feat)
{
 struct ast_vhub *vhub = ep->vhub;
 struct ast_vhub_port *p;

 if (port == 0 || port > AST_VHUB_NUM_PORTS)
  return std_req_stall;
 port--;
 p = &vhub->ports[port];

 switch(feat) {
 case 131:
  ast_vhub_change_port_stat(vhub, port,
       USB_PORT_STAT_ENABLE |
       USB_PORT_STAT_SUSPEND, 0,
       0);
  ast_vhub_dev_suspend(&p->dev);
  return std_req_complete;
 case 128:
  if (!(p->status & USB_PORT_STAT_SUSPEND))
   return std_req_complete;
  ast_vhub_change_port_stat(vhub, port,
       USB_PORT_STAT_SUSPEND, 0,
       0);
  ast_vhub_dev_resume(&p->dev);
  return std_req_complete;
 case 129:

  return std_req_complete;
 case 130:

  return std_req_complete;
 case 136:
 case 135:
 case 132:
 case 134:
 case 133:

  p->change &= ~(1u << (feat - 16));
  ast_vhub_update_hub_ep1(vhub, port);
  return std_req_complete;
 }
 return std_req_stall;
}

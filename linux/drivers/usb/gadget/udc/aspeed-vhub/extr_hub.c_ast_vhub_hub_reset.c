
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_vhub_port {int dev; scalar_t__ change; int status; } ;
struct ast_vhub {scalar_t__ speed; int suspended; int wakeup_en; scalar_t__ regs; struct ast_vhub_port* ports; } ;


 scalar_t__ AST_VHUB_CONF ;
 scalar_t__ AST_VHUB_EP0_CTRL ;
 scalar_t__ AST_VHUB_EP1_CTRL ;
 scalar_t__ AST_VHUB_EP1_STS_CHG ;
 unsigned int AST_VHUB_NUM_PORTS ;
 int UDCDBG (struct ast_vhub*,char*) ;
 int USB_PORT_STAT_CONNECTION ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int VHUB_EP1_CTRL_ENABLE ;
 int VHUB_EP1_CTRL_RESET_TOGGLE ;
 int ast_vhub_dev_suspend (int *) ;
 int writel (int,scalar_t__) ;

void ast_vhub_hub_reset(struct ast_vhub *vhub)
{
 unsigned int i;

 UDCDBG(vhub, "USB bus reset\n");





 if (vhub->speed == USB_SPEED_UNKNOWN)
  return;


 vhub->suspended = 0;


 vhub->speed = USB_SPEED_UNKNOWN;


 vhub->wakeup_en = 0;





 for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
  struct ast_vhub_port *p = &vhub->ports[i];


  p->status &= USB_PORT_STAT_CONNECTION;
  p->change = 0;


  ast_vhub_dev_suspend(&p->dev);
 }


 writel(0, vhub->regs + AST_VHUB_CONF);
 writel(0, vhub->regs + AST_VHUB_EP0_CTRL);
 writel(VHUB_EP1_CTRL_RESET_TOGGLE |
        VHUB_EP1_CTRL_ENABLE,
        vhub->regs + AST_VHUB_EP1_CTRL);
 writel(0, vhub->regs + AST_VHUB_EP1_STS_CHG);
}

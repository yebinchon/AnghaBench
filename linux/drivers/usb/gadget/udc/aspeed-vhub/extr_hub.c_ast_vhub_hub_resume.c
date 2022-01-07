
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ast_vhub_port {int status; int dev; } ;
struct ast_vhub {int suspended; struct ast_vhub_port* ports; } ;


 unsigned int AST_VHUB_NUM_PORTS ;
 int UDCDBG (struct ast_vhub*,char*) ;
 int USB_PORT_STAT_SUSPEND ;
 int ast_vhub_dev_resume (int *) ;

void ast_vhub_hub_resume(struct ast_vhub *vhub)
{
 unsigned int i;

 UDCDBG(vhub, "USB bus resume\n");

 if (!vhub->suspended)
  return;

 vhub->suspended = 0;





 for (i = 0; i < AST_VHUB_NUM_PORTS; i++) {
  struct ast_vhub_port *p = &vhub->ports[i];

  if (!(p->status & USB_PORT_STAT_SUSPEND))
   ast_vhub_dev_resume(&p->dev);
 }
}

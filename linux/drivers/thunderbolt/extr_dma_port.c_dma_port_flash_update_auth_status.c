
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tb_switch {TYPE_1__* tb; } ;
struct tb_dma_port {scalar_t__ base; int port; struct tb_switch* sw; } ;
struct TYPE_2__ {int ctl; } ;


 int DMA_PORT_TIMEOUT ;
 int MAIL_IN_CMD_FLASH_UPDATE_AUTH ;
 scalar_t__ MAIL_OUT ;
 int MAIL_OUT_STATUS_CMD_MASK ;
 int MAIL_OUT_STATUS_CMD_SHIFT ;
 int MAIL_OUT_STATUS_MASK ;
 int dma_port_read (int ,int*,int ,int ,scalar_t__,int,int ) ;
 int tb_route (struct tb_switch*) ;

int dma_port_flash_update_auth_status(struct tb_dma_port *dma, u32 *status)
{
 struct tb_switch *sw = dma->sw;
 u32 out, cmd;
 int ret;

 ret = dma_port_read(sw->tb->ctl, &out, tb_route(sw), dma->port,
       dma->base + MAIL_OUT, 1, DMA_PORT_TIMEOUT);
 if (ret)
  return ret;


 cmd = (out & MAIL_OUT_STATUS_CMD_MASK) >> MAIL_OUT_STATUS_CMD_SHIFT;
 if (cmd == MAIL_IN_CMD_FLASH_UPDATE_AUTH) {
  if (status)
   *status = out & MAIL_OUT_STATUS_MASK;


  return 1;
 }

 return 0;
}

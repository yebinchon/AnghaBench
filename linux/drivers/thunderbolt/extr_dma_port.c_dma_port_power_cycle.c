
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_dma_port {int dummy; } ;


 int MAIL_IN_CMD_POWER_CYCLE ;
 int MAIL_IN_CMD_SHIFT ;
 int MAIL_IN_OP_REQUEST ;
 int dma_port_request (struct tb_dma_port*,int,int) ;

int dma_port_power_cycle(struct tb_dma_port *dma)
{
 u32 in;

 in = MAIL_IN_CMD_POWER_CYCLE << MAIL_IN_CMD_SHIFT;
 in |= MAIL_IN_OP_REQUEST;

 return dma_port_request(dma, in, 150);
}

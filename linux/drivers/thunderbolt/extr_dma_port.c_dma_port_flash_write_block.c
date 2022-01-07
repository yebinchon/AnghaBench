
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tb_switch {TYPE_1__* tb; } ;
struct tb_dma_port {scalar_t__ base; int port; struct tb_switch* sw; } ;
struct TYPE_2__ {int ctl; } ;


 int DMA_PORT_CSS_ADDRESS ;
 int DMA_PORT_TIMEOUT ;
 scalar_t__ MAIL_DATA ;
 int MAIL_IN_ADDRESS_MASK ;
 int MAIL_IN_ADDRESS_SHIFT ;
 int MAIL_IN_CMD_FLASH_WRITE ;
 int MAIL_IN_CMD_SHIFT ;
 int MAIL_IN_CSS ;
 int MAIL_IN_DWORDS_MASK ;
 int MAIL_IN_DWORDS_SHIFT ;
 int MAIL_IN_OP_REQUEST ;
 int dma_port_request (struct tb_dma_port*,int,int ) ;
 int dma_port_write (int ,void const*,int ,int ,scalar_t__,int,int ) ;
 int tb_route (struct tb_switch*) ;

__attribute__((used)) static int dma_port_flash_write_block(struct tb_dma_port *dma, u32 address,
          const void *buf, u32 size)
{
 struct tb_switch *sw = dma->sw;
 u32 in, dwaddress, dwords;
 int ret;

 dwords = size / 4;


 ret = dma_port_write(sw->tb->ctl, buf, tb_route(sw), dma->port,
       dma->base + MAIL_DATA, dwords, DMA_PORT_TIMEOUT);

 in = MAIL_IN_CMD_FLASH_WRITE << MAIL_IN_CMD_SHIFT;


 if (address >= DMA_PORT_CSS_ADDRESS) {
  dwaddress = DMA_PORT_CSS_ADDRESS;
  in |= MAIL_IN_CSS;
 } else {
  dwaddress = address / 4;
 }

 in |= ((dwords - 1) << MAIL_IN_DWORDS_SHIFT) & MAIL_IN_DWORDS_MASK;
 in |= (dwaddress << MAIL_IN_ADDRESS_SHIFT) & MAIL_IN_ADDRESS_MASK;
 in |= MAIL_IN_OP_REQUEST;

 return dma_port_request(dma, in, DMA_PORT_TIMEOUT);
}


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
 scalar_t__ MAIL_IN ;
 scalar_t__ MAIL_OUT ;
 int dma_port_read (int ,int *,int ,int ,scalar_t__,int,int ) ;
 int dma_port_wait_for_completion (struct tb_dma_port*,unsigned int) ;
 int dma_port_write (int ,int *,int ,int ,scalar_t__,int,int ) ;
 int status_to_errno (int ) ;
 int tb_route (struct tb_switch*) ;

__attribute__((used)) static int dma_port_request(struct tb_dma_port *dma, u32 in,
       unsigned int timeout)
{
 struct tb_switch *sw = dma->sw;
 u32 out;
 int ret;

 ret = dma_port_write(sw->tb->ctl, &in, tb_route(sw), dma->port,
        dma->base + MAIL_IN, 1, DMA_PORT_TIMEOUT);
 if (ret)
  return ret;

 ret = dma_port_wait_for_completion(dma, timeout);
 if (ret)
  return ret;

 ret = dma_port_read(sw->tb->ctl, &out, tb_route(sw), dma->port,
       dma->base + MAIL_OUT, 1, DMA_PORT_TIMEOUT);
 if (ret)
  return ret;

 return status_to_errno(out);
}

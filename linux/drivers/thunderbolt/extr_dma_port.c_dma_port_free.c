
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_dma_port {struct tb_dma_port* buf; } ;


 int kfree (struct tb_dma_port*) ;

void dma_port_free(struct tb_dma_port *dma)
{
 if (dma) {
  kfree(dma->buf);
  kfree(dma);
 }
}

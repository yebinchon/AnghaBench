
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_switch {int dummy; } ;
struct tb_dma_port {int port; int base; struct tb_switch* sw; int buf; } ;


 int DMA_PORT_CAP ;
 int GFP_KERNEL ;
 int MAIL_DATA_DWORDS ;
 int dma_find_port (struct tb_switch*) ;
 int kfree (struct tb_dma_port*) ;
 int kmalloc_array (int ,int,int ) ;
 struct tb_dma_port* kzalloc (int,int ) ;

struct tb_dma_port *dma_port_alloc(struct tb_switch *sw)
{
 struct tb_dma_port *dma;
 int port;

 port = dma_find_port(sw);
 if (port < 0)
  return ((void*)0);

 dma = kzalloc(sizeof(*dma), GFP_KERNEL);
 if (!dma)
  return ((void*)0);

 dma->buf = kmalloc_array(MAIL_DATA_DWORDS, sizeof(u32), GFP_KERNEL);
 if (!dma->buf) {
  kfree(dma);
  return ((void*)0);
 }

 dma->sw = sw;
 dma->port = port;
 dma->base = DMA_PORT_CAP;

 return dma;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_media_dma_buf {scalar_t__ phys; int * virt; int len; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int ,int *,scalar_t__) ;

void imx_media_free_dma_buf(struct device *dev,
       struct imx_media_dma_buf *buf)
{
 if (buf->virt)
  dma_free_coherent(dev, buf->len, buf->virt, buf->phys);

 buf->virt = ((void*)0);
 buf->phys = 0;
}

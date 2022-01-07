
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acm {int rx_buflimit; TYPE_1__* read_buffers; int readsize; int dev; } ;
struct TYPE_2__ {int dma; int base; } ;


 int usb_free_coherent (int ,int ,int ,int ) ;

__attribute__((used)) static void acm_read_buffers_free(struct acm *acm)
{
 int i;

 for (i = 0; i < acm->rx_buflimit; i++)
  usb_free_coherent(acm->dev, acm->readsize,
     acm->read_buffers[i].base, acm->read_buffers[i].dma);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ slave_id; } ;
struct sh_dmae_slave {TYPE_1__ shdma_slave; } ;
struct dma_chan {struct sh_dmae_slave* private; } ;



__attribute__((used)) static bool usbhsf_dma_filter(struct dma_chan *chan, void *param)
{
 struct sh_dmae_slave *slave = param;






 if (0 == slave->shdma_slave.slave_id)
  return 0;

 chan->private = slave;

 return 1;
}

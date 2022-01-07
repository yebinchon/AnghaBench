
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int mite_channel_lock; int * ao_mite_chan; } ;
struct comedi_device {struct ni_private* private; } ;


 int NI_E_DMA_AI_AO_SEL_REG ;
 int NI_E_DMA_AO_SEL_MASK ;
 int mite_release_channel (int *) ;
 int ni_set_bitfield (struct comedi_device*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ni_release_ao_mite_channel(struct comedi_device *dev)
{
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ is_m_series; } ;
struct comedi_device {struct ni_private* private; } ;


 unsigned int NI_PFI (int ) ;
 unsigned int ni_m_series_get_pfi_routing (struct comedi_device*,unsigned int) ;
 unsigned int ni_old_get_pfi_routing (struct comedi_device*,unsigned int) ;

__attribute__((used)) static unsigned int ni_get_pfi_routing(struct comedi_device *dev,
           unsigned int chan)
{
 struct ni_private *devpriv = dev->private;

 if (chan >= NI_PFI(0)) {

  chan -= NI_PFI(0);
 }
 return (devpriv->is_m_series)
   ? ni_m_series_get_pfi_routing(dev, chan)
   : ni_old_get_pfi_routing(dev, chan);
}

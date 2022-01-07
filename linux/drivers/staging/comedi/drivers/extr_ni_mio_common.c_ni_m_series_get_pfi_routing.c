
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int * pfi_output_select_reg; } ;
struct comedi_device {struct ni_private* private; } ;


 unsigned int NI_M_PFI_OUT_SEL_TO_SRC (unsigned int,int ) ;

__attribute__((used)) static unsigned int ni_m_series_get_pfi_routing(struct comedi_device *dev,
      unsigned int chan)
{
 struct ni_private *devpriv = dev->private;
 const unsigned int array_offset = chan / 3;

 return NI_M_PFI_OUT_SEL_TO_SRC(chan,
    devpriv->pfi_output_select_reg[array_offset]);
}

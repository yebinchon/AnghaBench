
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int dummy; } ;


 int NI67XX_AO_CFG2_REG ;
 int NI67XX_AO_SP_UPDATES_REG ;
 int NI_E_AO_DACSEL (int) ;
 int ni_ao_win_outw (struct comedi_device*,int,int ) ;

__attribute__((used)) static void init_ao_67xx(struct comedi_device *dev, struct comedi_subdevice *s)
{
 int i;

 for (i = 0; i < s->n_chan; i++) {
  ni_ao_win_outw(dev, NI_E_AO_DACSEL(i) | 0x0,
          NI67XX_AO_CFG2_REG);
 }
 ni_ao_win_outw(dev, 0x0, NI67XX_AO_SP_UPDATES_REG);
}

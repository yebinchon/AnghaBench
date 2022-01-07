
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int DT_C_READ_ADIM ;
 int dt2801_readdata2 (struct comedi_device*,int*) ;
 int dt2801_reset (struct comedi_device*) ;
 int dt2801_writecmd (struct comedi_device*,int ) ;
 int dt2801_writedata (struct comedi_device*,int) ;

__attribute__((used)) static int probe_number_of_ai_chans(struct comedi_device *dev)
{
 int n_chans;
 int stat;
 int data;

 for (n_chans = 0; n_chans < 16; n_chans++) {
  dt2801_writecmd(dev, DT_C_READ_ADIM);
  dt2801_writedata(dev, 0);
  dt2801_writedata(dev, n_chans);
  stat = dt2801_readdata2(dev, &data);

  if (stat)
   break;
 }

 dt2801_reset(dev);
 dt2801_reset(dev);

 return n_chans;
}

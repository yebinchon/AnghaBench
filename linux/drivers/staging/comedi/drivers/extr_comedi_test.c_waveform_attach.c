
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;
struct comedi_devconfig {int* options; } ;


 int waveform_common_attach (struct comedi_device*,int,int) ;

__attribute__((used)) static int waveform_attach(struct comedi_device *dev,
      struct comedi_devconfig *it)
{
 int amplitude = it->options[0];
 int period = it->options[1];


 if (amplitude <= 0)
  amplitude = 1000000;
 if (period <= 0)
  period = 100000;

 return waveform_common_attach(dev, amplitude, period);
}

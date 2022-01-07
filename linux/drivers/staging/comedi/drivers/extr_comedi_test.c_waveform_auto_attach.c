
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int set_amplitude ;
 int set_period ;
 int waveform_common_attach (struct comedi_device*,int,int) ;

__attribute__((used)) static int waveform_auto_attach(struct comedi_device *dev,
    unsigned long context_unused)
{
 int amplitude = set_amplitude;
 int period = set_period;


 if (!amplitude)
  amplitude = 1000000;
 if (!period)
  period = 100000;

 return waveform_common_attach(dev, amplitude, period);
}

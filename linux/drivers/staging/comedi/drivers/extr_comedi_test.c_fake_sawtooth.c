
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct waveform_private {int wf_amplitude; scalar_t__ wf_period; } ;
struct comedi_subdevice {int maxdata; TYPE_1__* range_table; } ;
struct comedi_krange {scalar_t__ min; scalar_t__ max; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct waveform_private* private; } ;
struct TYPE_2__ {struct comedi_krange* range; } ;


 int do_div (int,scalar_t__) ;

__attribute__((used)) static unsigned short fake_sawtooth(struct comedi_device *dev,
        unsigned int range_index,
        unsigned int current_time)
{
 struct waveform_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int offset = s->maxdata / 2;
 u64 value;
 const struct comedi_krange *krange =
     &s->range_table->range[range_index];
 u64 binary_amplitude;

 binary_amplitude = s->maxdata;
 binary_amplitude *= devpriv->wf_amplitude;
 do_div(binary_amplitude, krange->max - krange->min);

 value = current_time;
 value *= binary_amplitude * 2;
 do_div(value, devpriv->wf_period);
 value += offset;

 if (value < binary_amplitude) {
  value = 0;
 } else {
  value -= binary_amplitude;
  if (value > s->maxdata)
   value = s->maxdata;
 }

 return value;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int inttrig; } ;


 int apci1500_di_inttrig_start ;

__attribute__((used)) static int apci1500_di_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 s->async->inttrig = apci1500_di_inttrig_start;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int pacer; } ;


 int comedi_8254_cascade_ns_to_timer (int ,unsigned int*,unsigned int) ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_8254_update_divisors (int ) ;

__attribute__((used)) static unsigned int das16_set_pacer(struct comedi_device *dev, unsigned int ns,
        unsigned int flags)
{
 comedi_8254_cascade_ns_to_timer(dev->pacer, &ns, flags);
 comedi_8254_update_divisors(dev->pacer);
 comedi_8254_pacer_enable(dev->pacer, 1, 2, 1);

 return ns;
}

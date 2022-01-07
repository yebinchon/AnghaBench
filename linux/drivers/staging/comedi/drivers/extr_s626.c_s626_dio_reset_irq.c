
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int S626_LP_MISC1 ;
 int S626_LP_WRCAPSEL (unsigned int) ;
 unsigned int S626_MISC1_NOEDCAP ;
 int s626_debi_write (struct comedi_device*,int ,unsigned int) ;

__attribute__((used)) static int s626_dio_reset_irq(struct comedi_device *dev, unsigned int group,
         unsigned int mask)
{

 s626_debi_write(dev, S626_LP_MISC1, S626_MISC1_NOEDCAP);


 s626_debi_write(dev, S626_LP_WRCAPSEL(group), mask);

 return 0;
}

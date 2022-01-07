
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int S626_DIO_BANKS ;
 int S626_LP_MISC1 ;
 int S626_LP_WRCAPSEL (unsigned int) ;
 int S626_MISC1_NOEDCAP ;
 int s626_debi_write (struct comedi_device*,int ,int) ;

__attribute__((used)) static int s626_dio_clear_irq(struct comedi_device *dev)
{
 unsigned int group;


 s626_debi_write(dev, S626_LP_MISC1, S626_MISC1_NOEDCAP);


 for (group = 0; group < S626_DIO_BANKS; group++)
  s626_debi_write(dev, S626_LP_WRCAPSEL(group), 0xffff);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int S626_LP_MISC1 ;
 int S626_LP_RDCAPSEL (unsigned int) ;
 int S626_LP_RDEDGSEL (unsigned int) ;
 int S626_LP_RDINTSEL (unsigned int) ;
 int S626_LP_WRCAPSEL (unsigned int) ;
 int S626_LP_WREDGSEL (unsigned int) ;
 int S626_LP_WRINTSEL (unsigned int) ;
 unsigned int S626_MISC1_EDCAP ;
 unsigned int s626_debi_read (struct comedi_device*,int ) ;
 int s626_debi_write (struct comedi_device*,int ,unsigned int) ;

__attribute__((used)) static int s626_dio_set_irq(struct comedi_device *dev, unsigned int chan)
{
 unsigned int group = chan / 16;
 unsigned int mask = 1 << (chan - (16 * group));
 unsigned int status;


 status = s626_debi_read(dev, S626_LP_RDEDGSEL(group));
 s626_debi_write(dev, S626_LP_WREDGSEL(group), mask | status);


 status = s626_debi_read(dev, S626_LP_RDINTSEL(group));
 s626_debi_write(dev, S626_LP_WRINTSEL(group), mask | status);


 s626_debi_write(dev, S626_LP_MISC1, S626_MISC1_EDCAP);


 status = s626_debi_read(dev, S626_LP_RDCAPSEL(group));
 s626_debi_write(dev, S626_LP_WRCAPSEL(group), mask | status);

 return 0;
}

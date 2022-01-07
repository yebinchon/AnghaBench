
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct comedi_device {int dummy; } ;


 scalar_t__ S626_DIO_BANKS ;
 int S626_LP_MISC1 ;
 int S626_LP_WRCAPSEL (scalar_t__) ;
 int S626_LP_WRDOUT (scalar_t__) ;
 int S626_LP_WREDGSEL (scalar_t__) ;
 int S626_LP_WRINTSEL (scalar_t__) ;
 int S626_MISC1_NOEDCAP ;
 int s626_debi_write (struct comedi_device*,int ,int) ;

__attribute__((used)) static void s626_dio_init(struct comedi_device *dev)
{
 u16 group;


 s626_debi_write(dev, S626_LP_MISC1, S626_MISC1_NOEDCAP);


 for (group = 0; group < S626_DIO_BANKS; group++) {

  s626_debi_write(dev, S626_LP_WRINTSEL(group), 0);

  s626_debi_write(dev, S626_LP_WRCAPSEL(group), 0xffff);

  s626_debi_write(dev, S626_LP_WREDGSEL(group), 0);

  s626_debi_write(dev, S626_LP_WRDOUT(group), 0);
 }
}

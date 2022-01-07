
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int PCMMIO_PAGE_ENAB ;
 int PCMMIO_PAGE_INT_ID ;
 int PCMMIO_PAGE_POL ;
 int pcmmio_dio_write (struct comedi_device*,int ,int ,int) ;

__attribute__((used)) static void pcmmio_reset(struct comedi_device *dev)
{

 pcmmio_dio_write(dev, 0, 0, 0);
 pcmmio_dio_write(dev, 0, 0, 3);


 pcmmio_dio_write(dev, 0, PCMMIO_PAGE_POL, 0);
 pcmmio_dio_write(dev, 0, PCMMIO_PAGE_ENAB, 0);
 pcmmio_dio_write(dev, 0, PCMMIO_PAGE_INT_ID, 0);
}

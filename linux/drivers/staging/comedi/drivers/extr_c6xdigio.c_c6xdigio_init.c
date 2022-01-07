
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int c6xdigio_write_data (struct comedi_device*,int,int) ;

__attribute__((used)) static void c6xdigio_init(struct comedi_device *dev)
{

 c6xdigio_write_data(dev, 0x70, 0x00);
 c6xdigio_write_data(dev, 0x74, 0x80);
 c6xdigio_write_data(dev, 0x70, 0x00);
 c6xdigio_write_data(dev, 0x00, 0x80);


 c6xdigio_write_data(dev, 0x68, 0x00);
 c6xdigio_write_data(dev, 0x6c, 0x80);
 c6xdigio_write_data(dev, 0x68, 0x00);
 c6xdigio_write_data(dev, 0x00, 0x80);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer_dev {unsigned int interface; } ;


 int INFO (struct printer_dev*,char*,unsigned int) ;
 int printer_reset_interface (struct printer_dev*) ;
 int set_printer_interface (struct printer_dev*) ;

__attribute__((used)) static int set_interface(struct printer_dev *dev, unsigned number)
{
 int result = 0;


 printer_reset_interface(dev);

 result = set_printer_interface(dev);
 if (result)
  printer_reset_interface(dev);
 else
  dev->interface = number;

 if (!result)
  INFO(dev, "Using interface %x\n", number);

 return result;
}

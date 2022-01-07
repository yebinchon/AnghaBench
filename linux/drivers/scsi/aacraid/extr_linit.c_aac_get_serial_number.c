
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int ssize_t ;


 int aac_serial_number ;
 int aac_show_serial_number (struct device*,int *,char*) ;

ssize_t aac_get_serial_number(struct device *device, char *buf)
{
 return aac_show_serial_number(device, &aac_serial_number, buf);
}

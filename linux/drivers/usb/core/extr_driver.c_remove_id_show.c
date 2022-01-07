
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int new_id_show (struct device_driver*,char*) ;

__attribute__((used)) static ssize_t remove_id_show(struct device_driver *driver, char *buf)
{
 return new_id_show(driver, buf);
}

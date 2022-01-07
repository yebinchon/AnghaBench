
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct con_driver {int dummy; } ;
typedef size_t ssize_t ;


 int console_lock () ;
 int console_unlock () ;
 struct con_driver* dev_get_drvdata (struct device*) ;
 int simple_strtoul (char const*,int *,int ) ;
 int vt_bind (struct con_driver*) ;
 int vt_unbind (struct con_driver*) ;

__attribute__((used)) static ssize_t store_bind(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct con_driver *con = dev_get_drvdata(dev);
 int bind = simple_strtoul(buf, ((void*)0), 0);

 console_lock();

 if (bind)
  vt_bind(con);
 else
  vt_unbind(con);

 console_unlock();

 return count;
}

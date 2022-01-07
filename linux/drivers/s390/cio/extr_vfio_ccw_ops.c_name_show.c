
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct kobject *kobj, struct device *dev, char *buf)
{
 return sprintf(buf, "I/O subchannel (Non-QDIO)\n");
}

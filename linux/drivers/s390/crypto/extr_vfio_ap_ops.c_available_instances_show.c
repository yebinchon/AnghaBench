
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int available_instances; } ;


 int atomic_read (int *) ;
 TYPE_1__* matrix_dev ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t available_instances_show(struct kobject *kobj,
     struct device *dev, char *buf)
{
 return sprintf(buf, "%d\n",
         atomic_read(&matrix_dev->available_instances));
}

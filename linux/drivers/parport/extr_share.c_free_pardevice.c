
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pardevice {struct pardevice* name; } ;
struct device {int dummy; } ;


 int kfree (struct pardevice*) ;
 struct pardevice* to_pardevice (struct device*) ;

__attribute__((used)) static void free_pardevice(struct device *dev)
{
 struct pardevice *par_dev = to_pardevice(dev);

 kfree(par_dev->name);
 kfree(par_dev);
}

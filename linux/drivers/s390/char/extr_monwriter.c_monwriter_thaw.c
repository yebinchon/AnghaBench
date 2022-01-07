
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int monwriter_restore (struct device*) ;

__attribute__((used)) static int monwriter_thaw(struct device *dev)
{
 return monwriter_restore(dev);
}

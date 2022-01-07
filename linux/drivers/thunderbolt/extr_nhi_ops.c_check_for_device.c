
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int tb_is_switch (struct device*) ;

__attribute__((used)) static int check_for_device(struct device *dev, void *data)
{
 return tb_is_switch(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {int rpm_complete; } ;
struct device {int dummy; } ;


 int complete (int *) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static int complete_rpm(struct device *dev, void *data)
{
 struct tb_switch *sw = tb_to_switch(dev);

 if (sw)
  complete(&sw->rpm_complete);
 return 0;
}

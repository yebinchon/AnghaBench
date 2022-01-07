
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int amilo_rfkill_dev ;
 int rfkill_destroy (int ) ;
 int rfkill_unregister (int ) ;

__attribute__((used)) static int amilo_rfkill_remove(struct platform_device *device)
{
 rfkill_unregister(amilo_rfkill_dev);
 rfkill_destroy(amilo_rfkill_dev);
 return 0;
}

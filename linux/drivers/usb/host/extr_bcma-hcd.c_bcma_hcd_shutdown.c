
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_device {int dummy; } ;


 int bcma_core_disable (struct bcma_device*,int ) ;
 int bcma_hci_platform_power_gpio (struct bcma_device*,int) ;

__attribute__((used)) static void bcma_hcd_shutdown(struct bcma_device *dev)
{
 bcma_hci_platform_power_gpio(dev, 0);
 bcma_core_disable(dev, 0);
}

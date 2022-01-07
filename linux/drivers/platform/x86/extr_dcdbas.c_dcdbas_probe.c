
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int DMA_BIT_MASK (int) ;
 int DRIVER_DESCRIPTION ;
 int DRIVER_VERSION ;
 int HC_ACTION_NONE ;
 int HC_SMITYPE_NONE ;
 int dcdbas_attr_group ;
 int dcdbas_check_wsmt () ;
 struct platform_device* dcdbas_pdev ;
 int dcdbas_reboot_nb ;
 int dev_info (TYPE_1__*,char*,int ,int ) ;
 int dma_set_coherent_mask (TYPE_1__*,int ) ;
 int host_control_action ;
 int host_control_smi_type ;
 int register_reboot_notifier (int *) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int dcdbas_probe(struct platform_device *dev)
{
 int error;

 host_control_action = HC_ACTION_NONE;
 host_control_smi_type = HC_SMITYPE_NONE;

 dcdbas_pdev = dev;


 error = dcdbas_check_wsmt();
 if (error < 0)
  return error;





 error = dma_set_coherent_mask(&dcdbas_pdev->dev, DMA_BIT_MASK(32));
 if (error)
  return error;

 error = sysfs_create_group(&dev->dev.kobj, &dcdbas_attr_group);
 if (error)
  return error;

 register_reboot_notifier(&dcdbas_reboot_nb);

 dev_info(&dev->dev, "%s (version %s)\n",
   DRIVER_DESCRIPTION, DRIVER_VERSION);

 return 0;
}

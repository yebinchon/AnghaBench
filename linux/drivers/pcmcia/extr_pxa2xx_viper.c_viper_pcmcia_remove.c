
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * arcom_pcmcia_dev ;
 int platform_device_unregister (int ) ;
 int viper_pcmcia_device ;

__attribute__((used)) static int viper_pcmcia_remove(struct platform_device *pdev)
{
 platform_device_unregister(viper_pcmcia_device);
 arcom_pcmcia_dev = ((void*)0);
 return 0;
}

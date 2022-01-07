
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dev; } ;


 int dev_dbg (int *,char*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int platform_dev ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static void sl811_cs_release(struct pcmcia_device * link)
{
 dev_dbg(&link->dev, "sl811_cs_release\n");

 pcmcia_disable_device(link);
 platform_device_unregister(&platform_dev);
}

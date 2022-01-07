
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dev; } ;
struct vscsibk_info {scalar_t__ irq; } ;


 struct vscsibk_info* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int scsiback_disconnect (struct vscsibk_info*) ;
 int scsiback_release_translation_entry (struct vscsibk_info*) ;

__attribute__((used)) static int scsiback_remove(struct xenbus_device *dev)
{
 struct vscsibk_info *info = dev_get_drvdata(&dev->dev);

 if (info->irq)
  scsiback_disconnect(info);

 scsiback_release_translation_entry(info);

 dev_set_drvdata(&dev->dev, ((void*)0));

 return 0;
}

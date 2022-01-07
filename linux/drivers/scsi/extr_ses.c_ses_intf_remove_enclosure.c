
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ses_device {struct ses_device* page2; struct ses_device* page1; struct ses_device* page10; } ;
struct scsi_device {int sdev_gendev; } ;
struct enclosure_device {int edev; TYPE_1__* component; struct ses_device* scratch; } ;
struct TYPE_2__ {struct ses_device* scratch; } ;


 struct enclosure_device* enclosure_find (int *,int *) ;
 int enclosure_unregister (struct enclosure_device*) ;
 int kfree (struct ses_device*) ;
 int put_device (int *) ;

__attribute__((used)) static void ses_intf_remove_enclosure(struct scsi_device *sdev)
{
 struct enclosure_device *edev;
 struct ses_device *ses_dev;


 edev = enclosure_find(&sdev->sdev_gendev, ((void*)0));
 if (!edev)
  return;

 ses_dev = edev->scratch;
 edev->scratch = ((void*)0);

 kfree(ses_dev->page10);
 kfree(ses_dev->page1);
 kfree(ses_dev->page2);
 kfree(ses_dev);

 kfree(edev->component[0].scratch);

 put_device(&edev->edev);
 enclosure_unregister(edev);
}

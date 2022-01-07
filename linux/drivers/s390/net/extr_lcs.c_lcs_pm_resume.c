
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_card {scalar_t__ state; TYPE_1__* gdev; scalar_t__ dev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ DEV_STATE_RECOVER ;
 int dev_warn (int *,char*) ;
 int lcs_new_device (TYPE_1__*) ;
 int netif_device_attach (scalar_t__) ;

__attribute__((used)) static int lcs_pm_resume(struct lcs_card *card)
{
 int rc = 0;

 if (card->state == DEV_STATE_RECOVER)
  rc = lcs_new_device(card->gdev);
 if (card->dev)
  netif_device_attach(card->dev);
 if (rc) {
  dev_warn(&card->gdev->dev, "The lcs device driver "
   "failed to recover the device\n");
 }
 return rc;
}

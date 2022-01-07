
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_card {int rx_mode_work; int mac_htable; } ;
struct TYPE_3__ {int * type; } ;
struct ccwgroup_device {TYPE_1__ dev; } ;


 int INIT_WORK (int *,int ) ;
 struct qeth_card* dev_get_drvdata (TYPE_1__*) ;
 int hash_init (int ) ;
 int qeth_generic_devtype ;
 int qeth_l2_create_device_attributes (TYPE_1__*) ;
 int qeth_l2_rx_mode_work ;
 int qeth_l2_vnicc_set_defaults (struct qeth_card*) ;

__attribute__((used)) static int qeth_l2_probe_device(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 int rc;

 qeth_l2_vnicc_set_defaults(card);

 if (gdev->dev.type == &qeth_generic_devtype) {
  rc = qeth_l2_create_device_attributes(&gdev->dev);
  if (rc)
   return rc;
 }

 hash_init(card->mac_htable);
 INIT_WORK(&card->rx_mode_work, qeth_l2_rx_mode_work);
 return 0;
}

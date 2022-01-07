
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zcrypt_card {TYPE_3__* card; int list; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__ ap_dev; int id; } ;


 int DBF_INFO ;
 int ZCRYPT_DBF (int ,char*,int ) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_remove_group (int *,int *) ;
 int zcrypt_card_attr_group ;
 int zcrypt_list_lock ;

void zcrypt_card_unregister(struct zcrypt_card *zc)
{
 ZCRYPT_DBF(DBF_INFO, "card=%02x unregister\n", zc->card->id);

 spin_lock(&zcrypt_list_lock);
 list_del_init(&zc->list);
 spin_unlock(&zcrypt_list_lock);
 sysfs_remove_group(&zc->card->ap_dev.device.kobj,
      &zcrypt_card_attr_group);
}

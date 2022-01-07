
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zcrypt_card {int online; TYPE_3__* card; int list; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {int id; TYPE_2__ ap_dev; } ;


 int DBF_INFO ;
 int ZCRYPT_DBF (int ,char*,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_create_group (int *,int *) ;
 int zcrypt_card_attr_group ;
 int zcrypt_card_list ;
 int zcrypt_list_lock ;

int zcrypt_card_register(struct zcrypt_card *zc)
{
 int rc;

 rc = sysfs_create_group(&zc->card->ap_dev.device.kobj,
    &zcrypt_card_attr_group);
 if (rc)
  return rc;

 spin_lock(&zcrypt_list_lock);
 list_add_tail(&zc->list, &zcrypt_card_list);
 spin_unlock(&zcrypt_list_lock);

 zc->online = 1;

 ZCRYPT_DBF(DBF_INFO, "card=%02x register online=1\n", zc->card->id);

 return rc;
}

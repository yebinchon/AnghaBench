
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_wwn {char* unit_serial; char* vendor; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_lun {int lun_se_dev; struct se_portal_group* lun_tpg; } ;
struct se_device {struct t10_wwn t10_wwn; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* (* tpg_get_wwn ) (struct se_portal_group*) ;} ;


 int ENODEV ;
 int PAGE_SIZE ;
 struct se_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snprintf (char*,int ,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* stub1 (struct se_portal_group*) ;
 char* stub2 (struct se_portal_group*) ;
 struct se_lun* to_transport_stat (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_transport_dev_name_show(struct config_item *item,
  char *page)
{
 struct se_lun *lun = to_transport_stat(item);
 struct se_device *dev;
 struct se_portal_group *tpg = lun->lun_tpg;
 struct t10_wwn *wwn;
 ssize_t ret = -ENODEV;

 rcu_read_lock();
 dev = rcu_dereference(lun->lun_se_dev);
 if (dev) {
  wwn = &dev->t10_wwn;

  ret = snprintf(page, PAGE_SIZE, "%s+%s\n",
    tpg->se_tpg_tfo->tpg_get_wwn(tpg),
    (strlen(wwn->unit_serial)) ? wwn->unit_serial :
    wwn->vendor);
 }
 rcu_read_unlock();
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_lun {int lun_se_dev; struct se_portal_group* lun_tpg; } ;
struct se_device {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* tpg_get_inst_index ) (struct se_portal_group*) ;} ;


 int ENODEV ;
 int PAGE_SIZE ;
 struct se_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snprintf (char*,int ,char*,int) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_portal_group*) ;
 struct se_lun* to_transport_stat (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_transport_indx_show(struct config_item *item,
  char *page)
{
 struct se_lun *lun = to_transport_stat(item);
 struct se_device *dev;
 struct se_portal_group *tpg = lun->lun_tpg;
 ssize_t ret = -ENODEV;

 rcu_read_lock();
 dev = rcu_dereference(lun->lun_se_dev);
 if (dev)
  ret = snprintf(page, PAGE_SIZE, "%u\n",
          tpg->se_tpg_tfo->tpg_get_inst_index(tpg));
 rcu_read_unlock();
 return ret;
}

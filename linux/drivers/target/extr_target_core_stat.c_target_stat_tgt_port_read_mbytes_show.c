
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tx_data_octets; } ;
struct se_lun {TYPE_1__ lun_stats; int lun_se_dev; } ;
struct se_device {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 int atomic_long_read (int *) ;
 struct se_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snprintf (char*,int ,char*,int) ;
 struct se_lun* to_stat_tgt_port (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_tgt_port_read_mbytes_show(struct config_item *item,
  char *page)
{
 struct se_lun *lun = to_stat_tgt_port(item);
 struct se_device *dev;
 ssize_t ret = -ENODEV;

 rcu_read_lock();
 dev = rcu_dereference(lun->lun_se_dev);
 if (dev)
  ret = snprintf(page, PAGE_SIZE, "%u\n",
    (u32)(atomic_long_read(&lun->lun_stats.tx_data_octets) >> 20));
 rcu_read_unlock();
 return ret;
}

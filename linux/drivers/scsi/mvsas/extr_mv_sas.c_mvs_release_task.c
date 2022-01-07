
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_info {int dummy; } ;
struct domain_device {int dummy; } ;


 int WIDE_PORT_MAX_PHY ;
 int mvs_do_release_task (struct mvs_info*,int,struct domain_device*) ;
 int mvs_find_dev_phyno (struct domain_device*,int*) ;

void mvs_release_task(struct mvs_info *mvi,
        struct domain_device *dev)
{
 int i, phyno[WIDE_PORT_MAX_PHY], num;
 num = mvs_find_dev_phyno(dev, phyno);
 for (i = 0; i < num; i++)
  mvs_do_release_task(mvi, phyno[i], dev);
}

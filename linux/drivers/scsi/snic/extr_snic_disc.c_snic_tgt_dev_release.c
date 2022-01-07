
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_tgt {int list; int id; } ;
struct device {int dummy; } ;


 int SNIC_BUG_ON (int) ;
 int SNIC_HOST_INFO (int ,char*,int ,int ) ;
 int dev_name (struct device*) ;
 struct snic_tgt* dev_to_tgt (struct device*) ;
 int kfree (struct snic_tgt*) ;
 int list_empty (int *) ;
 int snic_tgt_to_shost (struct snic_tgt*) ;

void
snic_tgt_dev_release(struct device *dev)
{
 struct snic_tgt *tgt = dev_to_tgt(dev);

 SNIC_HOST_INFO(snic_tgt_to_shost(tgt),
         "Target Device ID %d (%s) Permanently Deleted.\n",
         tgt->id,
         dev_name(dev));

 SNIC_BUG_ON(!list_empty(&tgt->list));
 kfree(tgt);
}

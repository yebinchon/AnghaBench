
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int safw_rescan_work; } ;


 int AAC_SAFW_RESCAN_DELAY ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static inline void aac_schedule_safw_scan_worker(struct aac_dev *dev)
{
 schedule_delayed_work(&dev->safw_rescan_work, AAC_SAFW_RESCAN_DELAY);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aac_dev {int safw_rescan_work; scalar_t__ sa_firmware; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static inline void aac_cancel_safw_rescan_worker(struct aac_dev *dev)
{
 if (dev->sa_firmware)
  cancel_delayed_work_sync(&dev->safw_rescan_work);
}

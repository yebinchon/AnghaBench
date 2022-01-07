
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {int keep_device; int scsi_device_list_entry; } ;
struct pqi_ctrl_info {int scsi_device_list_lock; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void pqi_fixup_botched_add(struct pqi_ctrl_info *ctrl_info,
 struct pqi_scsi_dev *device)
{
 unsigned long flags;

 spin_lock_irqsave(&ctrl_info->scsi_device_list_lock, flags);
 list_del(&device->scsi_device_list_entry);
 spin_unlock_irqrestore(&ctrl_info->scsi_device_list_lock, flags);


 device->keep_device = 0;
}

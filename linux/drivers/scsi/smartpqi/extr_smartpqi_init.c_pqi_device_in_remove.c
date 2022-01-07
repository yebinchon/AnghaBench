
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_scsi_dev {scalar_t__ in_remove; } ;
struct pqi_ctrl_info {int in_shutdown; } ;



__attribute__((used)) static inline bool pqi_device_in_remove(struct pqi_ctrl_info *ctrl_info,
     struct pqi_scsi_dev *device)
{
 return device->in_remove && !ctrl_info->in_shutdown;
}

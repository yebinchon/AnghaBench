
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;


 int device_for_each_child (struct device*,int*,int ) ;
 int device_unblock ;
 scalar_t__ scsi_is_target_device (struct device*) ;
 int starget_for_each_device (int ,int*,int ) ;
 int target_unblock ;
 int to_scsi_target (struct device*) ;

void
scsi_target_unblock(struct device *dev, enum scsi_device_state new_state)
{
 if (scsi_is_target_device(dev))
  starget_for_each_device(to_scsi_target(dev), &new_state,
     device_unblock);
 else
  device_for_each_child(dev, &new_state, target_unblock);
}

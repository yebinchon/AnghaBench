
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_state; } ;
typedef enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;


 int EINVAL ;
 int KERN_ERR ;
 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;
 int scsi_device_state_name (int) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,int ) ;

int
scsi_device_set_state(struct scsi_device *sdev, enum scsi_device_state state)
{
 enum scsi_device_state oldstate = sdev->sdev_state;

 if (state == oldstate)
  return 0;

 switch (state) {
 case 134:
  switch (oldstate) {
  case 133:
   break;
  default:
   goto illegal;
  }
  break;

 case 129:
  switch (oldstate) {
  case 134:
  case 131:
  case 128:
  case 130:
  case 136:
   break;
  default:
   goto illegal;
  }
  break;

 case 130:
  switch (oldstate) {
  case 129:
  case 131:
  case 128:
   break;
  default:
   goto illegal;
  }
  break;

 case 131:
 case 128:
  switch (oldstate) {
  case 134:
  case 129:
  case 130:
  case 136:
   break;
  default:
   goto illegal;
  }
  break;

 case 136:
  switch (oldstate) {
  case 129:
  case 133:
  case 131:
   break;
  default:
   goto illegal;
  }
  break;

 case 133:
  switch (oldstate) {
  case 134:
   break;
  default:
   goto illegal;
  }
  break;

 case 135:
  switch (oldstate) {
  case 134:
  case 129:
  case 130:
  case 131:
  case 128:
   break;
  default:
   goto illegal;
  }
  break;

 case 132:
  switch (oldstate) {
  case 134:
  case 129:
  case 131:
  case 128:
  case 135:
  case 136:
  case 133:
   break;
  default:
   goto illegal;
  }
  break;

 }
 sdev->sdev_state = state;
 return 0;

 illegal:
 SCSI_LOG_ERROR_RECOVERY(1,
    sdev_printk(KERN_ERR, sdev,
         "Illegal state transition %s->%s",
         scsi_device_state_name(oldstate),
         scsi_device_state_name(state))
    );
 return -EINVAL;
}

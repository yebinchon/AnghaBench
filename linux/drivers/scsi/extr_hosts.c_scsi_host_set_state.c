
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int shost_state; } ;
typedef enum scsi_host_state { ____Placeholder_scsi_host_state } scsi_host_state ;


 int EINVAL ;
 int KERN_ERR ;
 int SCSI_LOG_ERROR_RECOVERY (int,int ) ;







 int scsi_host_state_name (int) ;
 int shost_printk (int ,struct Scsi_Host*,char*,int ,int ) ;

int scsi_host_set_state(struct Scsi_Host *shost, enum scsi_host_state state)
{
 enum scsi_host_state oldstate = shost->shost_state;

 if (state == oldstate)
  return 0;

 switch (state) {
 case 132:



  goto illegal;

 case 128:
  switch (oldstate) {
  case 132:
  case 129:
   break;
  default:
   goto illegal;
  }
  break;

 case 129:
  switch (oldstate) {
  case 128:
   break;
  default:
   goto illegal;
  }
  break;

 case 134:
  switch (oldstate) {
  case 132:
  case 128:
  case 133:
   break;
  default:
   goto illegal;
  }
  break;

 case 131:
  switch (oldstate) {
  case 134:
  case 130:
   break;
  default:
   goto illegal;
  }
  break;

 case 133:
  switch (oldstate) {
  case 134:
  case 129:
   break;
  default:
   goto illegal;
  }
  break;

 case 130:
  switch (oldstate) {
  case 133:
   break;
  default:
   goto illegal;
  }
  break;
 }
 shost->shost_state = state;
 return 0;

 illegal:
 SCSI_LOG_ERROR_RECOVERY(1,
    shost_printk(KERN_ERR, shost,
          "Illegal host state transition"
          "%s->%s\n",
          scsi_host_state_name(oldstate),
          scsi_host_state_name(state)));
 return -EINVAL;
}

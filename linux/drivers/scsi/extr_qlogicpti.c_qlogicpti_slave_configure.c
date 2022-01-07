
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct scsi_device {int id; scalar_t__ wdtr; scalar_t__ sdtr; int host; } ;
struct qlogicpti {TYPE_1__* dev_param; } ;
struct TYPE_2__ {int device_flags; int synchronous_offset; int synchronous_period; } ;


 int MBOX_SET_TARGET_PARAMS ;
 int qlogicpti_mbox_command (struct qlogicpti*,int*,int ) ;
 struct qlogicpti* shost_priv (int ) ;

__attribute__((used)) static int qlogicpti_slave_configure(struct scsi_device *sdev)
{
 struct qlogicpti *qpti = shost_priv(sdev->host);
 int tgt = sdev->id;
 u_short param[6];



 if (sdev->sdtr) {
  qpti->dev_param[tgt].device_flags |= 0x10;
 } else {
  qpti->dev_param[tgt].synchronous_offset = 0;
  qpti->dev_param[tgt].synchronous_period = 0;
 }

 if (sdev->wdtr)
  qpti->dev_param[tgt].device_flags |= 0x20;

 param[0] = MBOX_SET_TARGET_PARAMS;
 param[1] = (tgt << 8);
 param[2] = (qpti->dev_param[tgt].device_flags << 8);
 if (qpti->dev_param[tgt].device_flags & 0x10) {
  param[3] = (qpti->dev_param[tgt].synchronous_offset << 8) |
   qpti->dev_param[tgt].synchronous_period;
 } else {
  param[3] = 0;
 }
 qlogicpti_mbox_command(qpti, param, 0);
 return 0;
}

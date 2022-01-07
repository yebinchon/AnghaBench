
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct uas_cmd_info {unsigned int state; } ;
struct scsi_cmnd {TYPE_1__* device; int SCp; } ;
struct TYPE_2__ {int hostdata; } ;


 unsigned int SUBMIT_STATUS_URB ;
 int uas_add_work (struct uas_cmd_info*) ;
 int uas_submit_urbs (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void uas_xfer_data(struct urb *urb, struct scsi_cmnd *cmnd,
     unsigned direction)
{
 struct uas_cmd_info *cmdinfo = (void *)&cmnd->SCp;
 int err;

 cmdinfo->state |= direction | SUBMIT_STATUS_URB;
 err = uas_submit_urbs(cmnd, cmnd->device->hostdata);
 if (err) {
  uas_add_work(cmdinfo);
 }
}

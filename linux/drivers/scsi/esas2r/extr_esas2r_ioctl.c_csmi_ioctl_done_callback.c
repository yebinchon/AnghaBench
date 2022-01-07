
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct atto_csmi_get_scsi_addr {int path_id; int target_id; } ;
struct atto_csmi_get_driver_info {int release_rev; int build_rev; int minor_rev; int major_rev; int name; } ;
union atto_ioctl_csmi {struct atto_csmi_get_scsi_addr scsi_addr; struct atto_csmi_get_driver_info drvr_info; } ;
struct TYPE_4__ {int csmi_status; } ;
struct TYPE_5__ {TYPE_1__ csmi; } ;
struct TYPE_6__ {TYPE_2__ ioctl_rsp; } ;
struct esas2r_request {TYPE_3__ func_rsp; int target_id; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_csmi {int control_code; int status; } ;




 int CSMI_STS_SUCCESS ;
 int ESAS2R_MAJOR_REV ;
 int ESAS2R_MINOR_REV ;
 int ESAS2R_VERSION_STR ;
 scalar_t__ esas2r_buffered_ioctl ;
 int le32_to_cpu (int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void csmi_ioctl_done_callback(struct esas2r_adapter *a,
         struct esas2r_request *rq, void *context)
{
 struct atto_csmi *ci = (struct atto_csmi *)context;
 union atto_ioctl_csmi *ioctl_csmi =
  (union atto_ioctl_csmi *)esas2r_buffered_ioctl;

 switch (ci->control_code) {
 case 129:
 {
  struct atto_csmi_get_driver_info *gdi =
   &ioctl_csmi->drvr_info;

  strcpy(gdi->name, ESAS2R_VERSION_STR);

  gdi->major_rev = ESAS2R_MAJOR_REV;
  gdi->minor_rev = ESAS2R_MINOR_REV;
  gdi->build_rev = 0;
  gdi->release_rev = 0;
  break;
 }

 case 128:
 {
  struct atto_csmi_get_scsi_addr *gsa = &ioctl_csmi->scsi_addr;

  if (le32_to_cpu(rq->func_rsp.ioctl_rsp.csmi.csmi_status) ==
      CSMI_STS_SUCCESS) {
   gsa->target_id = rq->target_id;
   gsa->path_id = 0;
  }

  break;
 }
 }

 ci->status = le32_to_cpu(rq->func_rsp.ioctl_rsp.csmi.csmi_status);
}

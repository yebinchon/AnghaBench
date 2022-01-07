
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct esas2r_request {scalar_t__ req_stat; TYPE_2__* vrq; scalar_t__ interrupt_cx; } ;
struct esas2r_ioctl_fs {scalar_t__ driver_error; int status; } ;
struct esas2r_adapter {int dummy; } ;
struct TYPE_3__ {scalar_t__ sub_func; } ;
struct TYPE_4__ {TYPE_1__ flash; } ;


 int ATTO_STS_FAILED ;
 int ATTO_STS_SUCCESS ;
 scalar_t__ RS_SUCCESS ;
 scalar_t__ VDA_FLASH_COMMIT ;
 int esas2r_enable_heartbeat (struct esas2r_adapter*) ;

__attribute__((used)) static void esas2r_complete_fs_ioctl(struct esas2r_adapter *a,
         struct esas2r_request *rq)
{
 struct esas2r_ioctl_fs *fs =
  (struct esas2r_ioctl_fs *)rq->interrupt_cx;

 if (rq->vrq->flash.sub_func == VDA_FLASH_COMMIT)
  esas2r_enable_heartbeat(a);

 fs->driver_error = rq->req_stat;

 if (fs->driver_error == RS_SUCCESS)
  fs->status = ATTO_STS_SUCCESS;
 else
  fs->status = ATTO_STS_FAILED;
}

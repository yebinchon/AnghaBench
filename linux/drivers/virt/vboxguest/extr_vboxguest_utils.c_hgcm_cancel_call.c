
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int request_type; } ;
struct TYPE_4__ {int flags; TYPE_1__ header; } ;
struct vmmdev_hgcm_call {TYPE_2__ header; int phys_req_to_cancel; } ;
struct vbg_dev {int cancel_req_mutex; struct vmmdev_hgcm_call* cancel_req; } ;


 int VERR_INVALID_PARAMETER ;
 int VERR_NOT_FOUND ;
 int VERR_NOT_IMPLEMENTED ;
 int VMMDEVREQ_HGCM_CANCEL ;
 int VMMDEV_HGCM_REQ_CANCELLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vbg_req_perform (struct vbg_dev*,struct vmmdev_hgcm_call*) ;
 int virt_to_phys (struct vmmdev_hgcm_call*) ;

__attribute__((used)) static int hgcm_cancel_call(struct vbg_dev *gdev, struct vmmdev_hgcm_call *call)
{
 int rc;






 mutex_lock(&gdev->cancel_req_mutex);
 gdev->cancel_req->phys_req_to_cancel = virt_to_phys(call);
 rc = vbg_req_perform(gdev, gdev->cancel_req);
 mutex_unlock(&gdev->cancel_req_mutex);

 if (rc == VERR_NOT_IMPLEMENTED) {
  call->header.flags |= VMMDEV_HGCM_REQ_CANCELLED;
  call->header.header.request_type = VMMDEVREQ_HGCM_CANCEL;

  rc = vbg_req_perform(gdev, call);
  if (rc == VERR_INVALID_PARAMETER)
   rc = VERR_NOT_FOUND;
 }

 if (rc >= 0)
  call->header.flags |= VMMDEV_HGCM_REQ_CANCELLED;

 return rc;
}

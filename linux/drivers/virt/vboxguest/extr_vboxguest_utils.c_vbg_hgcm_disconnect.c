
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int result; scalar_t__ flags; } ;
struct vmmdev_hgcm_disconnect {TYPE_1__ header; int client_id; } ;
struct vbg_dev {int hgcm_wq; } ;


 int ENOMEM ;
 int VINF_HGCM_ASYNC_EXECUTE ;
 int VMMDEVREQ_HGCM_DISCONNECT ;
 int hgcm_req_done (struct vbg_dev*,TYPE_1__*) ;
 struct vmmdev_hgcm_disconnect* vbg_req_alloc (int,int ,int ) ;
 int vbg_req_free (struct vmmdev_hgcm_disconnect*,int) ;
 int vbg_req_perform (struct vbg_dev*,struct vmmdev_hgcm_disconnect*) ;
 int wait_event (int ,int ) ;

int vbg_hgcm_disconnect(struct vbg_dev *gdev, u32 requestor,
   u32 client_id, int *vbox_status)
{
 struct vmmdev_hgcm_disconnect *hgcm_disconnect = ((void*)0);
 int rc;

 hgcm_disconnect = vbg_req_alloc(sizeof(*hgcm_disconnect),
     VMMDEVREQ_HGCM_DISCONNECT,
     requestor);
 if (!hgcm_disconnect)
  return -ENOMEM;

 hgcm_disconnect->header.flags = 0;
 hgcm_disconnect->client_id = client_id;

 rc = vbg_req_perform(gdev, hgcm_disconnect);

 if (rc == VINF_HGCM_ASYNC_EXECUTE)
  wait_event(gdev->hgcm_wq,
      hgcm_req_done(gdev, &hgcm_disconnect->header));

 if (rc >= 0)
  rc = hgcm_disconnect->header.result;

 vbg_req_free(hgcm_disconnect, sizeof(*hgcm_disconnect));

 *vbox_status = rc;
 return 0;
}

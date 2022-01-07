
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbg_session {int * hgcm_client_ids; struct vbg_dev* gdev; } ;
struct vbg_dev {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int U32_MAX ;
 int VBG_KERNEL_REQUEST ;
 int kfree (struct vbg_session*) ;
 int vbg_hgcm_disconnect (struct vbg_dev*,int ,int ,int*) ;
 int vbg_set_session_capabilities (struct vbg_dev*,struct vbg_session*,int ,int ,int) ;
 int vbg_set_session_event_filter (struct vbg_dev*,struct vbg_session*,int ,int ,int) ;

void vbg_core_close_session(struct vbg_session *session)
{
 struct vbg_dev *gdev = session->gdev;
 int i, rc;

 vbg_set_session_capabilities(gdev, session, 0, U32_MAX, 1);
 vbg_set_session_event_filter(gdev, session, 0, U32_MAX, 1);

 for (i = 0; i < ARRAY_SIZE(session->hgcm_client_ids); i++) {
  if (!session->hgcm_client_ids[i])
   continue;


  vbg_hgcm_disconnect(gdev, VBG_KERNEL_REQUEST,
        session->hgcm_client_ids[i], &rc);
 }

 kfree(session);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vbg_session {scalar_t__* hgcm_client_ids; int requestor; } ;
struct TYPE_6__ {scalar_t__ rc; } ;
struct TYPE_4__ {scalar_t__ client_id; } ;
struct TYPE_5__ {TYPE_1__ in; } ;
struct vbg_ioctl_hgcm_disconnect {TYPE_3__ hdr; TYPE_2__ u; } ;
struct vbg_dev {int session_mutex; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 scalar_t__ U32_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vbg_hgcm_disconnect (struct vbg_dev*,int ,scalar_t__,scalar_t__*) ;
 scalar_t__ vbg_ioctl_chk (TYPE_3__*,int,int ) ;

__attribute__((used)) static int vbg_ioctl_hgcm_disconnect(struct vbg_dev *gdev,
         struct vbg_session *session,
         struct vbg_ioctl_hgcm_disconnect *disconn)
{
 u32 client_id;
 int i, ret;

 if (vbg_ioctl_chk(&disconn->hdr, sizeof(disconn->u.in), 0))
  return -EINVAL;

 client_id = disconn->u.in.client_id;
 if (client_id == 0 || client_id == U32_MAX)
  return -EINVAL;

 mutex_lock(&gdev->session_mutex);
 for (i = 0; i < ARRAY_SIZE(session->hgcm_client_ids); i++) {
  if (session->hgcm_client_ids[i] == client_id) {
   session->hgcm_client_ids[i] = U32_MAX;
   break;
  }
 }
 mutex_unlock(&gdev->session_mutex);

 if (i >= ARRAY_SIZE(session->hgcm_client_ids))
  return -EINVAL;

 ret = vbg_hgcm_disconnect(gdev, session->requestor, client_id,
      &disconn->hdr.rc);

 mutex_lock(&gdev->session_mutex);
 if (ret == 0 && disconn->hdr.rc >= 0)
  session->hgcm_client_ids[i] = 0;
 else
  session->hgcm_client_ids[i] = client_id;
 mutex_unlock(&gdev->session_mutex);

 return ret;
}

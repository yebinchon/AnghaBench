
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vbg_session {int guest_caps; } ;
struct TYPE_4__ {int global_caps; int session_caps; } ;
struct TYPE_6__ {int or_mask; int not_mask; } ;
struct TYPE_5__ {TYPE_1__ out; TYPE_3__ in; } ;
struct vbg_ioctl_set_guest_caps {TYPE_2__ u; int hdr; } ;
struct vbg_dev {int guest_caps_host; } ;


 int EINVAL ;
 int VMMDEV_EVENT_VALID_EVENT_MASK ;
 scalar_t__ vbg_ioctl_chk (int *,int,int) ;
 int vbg_set_session_capabilities (struct vbg_dev*,struct vbg_session*,int,int,int) ;

__attribute__((used)) static int vbg_ioctl_change_guest_capabilities(struct vbg_dev *gdev,
      struct vbg_session *session, struct vbg_ioctl_set_guest_caps *caps)
{
 u32 or_mask, not_mask;
 int ret;

 if (vbg_ioctl_chk(&caps->hdr, sizeof(caps->u.in), sizeof(caps->u.out)))
  return -EINVAL;

 or_mask = caps->u.in.or_mask;
 not_mask = caps->u.in.not_mask;

 if ((or_mask | not_mask) & ~VMMDEV_EVENT_VALID_EVENT_MASK)
  return -EINVAL;

 ret = vbg_set_session_capabilities(gdev, session, or_mask, not_mask,
        0);
 if (ret)
  return ret;

 caps->u.out.session_caps = session->guest_caps;
 caps->u.out.global_caps = gdev->guest_caps_host;

 return 0;
}

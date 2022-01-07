
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vbg_session {int dummy; } ;
struct TYPE_3__ {int or_mask; int not_mask; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct vbg_ioctl_change_filter {TYPE_2__ u; int hdr; } ;
struct vbg_dev {int dummy; } ;


 int EINVAL ;
 int VMMDEV_EVENT_VALID_EVENT_MASK ;
 scalar_t__ vbg_ioctl_chk (int *,int,int ) ;
 int vbg_set_session_event_filter (struct vbg_dev*,struct vbg_session*,int,int,int) ;

__attribute__((used)) static int vbg_ioctl_change_filter_mask(struct vbg_dev *gdev,
     struct vbg_session *session,
     struct vbg_ioctl_change_filter *filter)
{
 u32 or_mask, not_mask;

 if (vbg_ioctl_chk(&filter->hdr, sizeof(filter->u.in), 0))
  return -EINVAL;

 or_mask = filter->u.in.or_mask;
 not_mask = filter->u.in.not_mask;

 if ((or_mask | not_mask) & ~VMMDEV_EVENT_VALID_EVENT_MASK)
  return -EINVAL;

 return vbg_set_session_event_filter(gdev, session, or_mask, not_mask,
         0);
}

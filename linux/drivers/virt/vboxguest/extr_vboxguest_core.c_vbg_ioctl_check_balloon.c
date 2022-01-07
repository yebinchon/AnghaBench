
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int handle_in_r3; int balloon_chunks; } ;
struct TYPE_6__ {TYPE_2__ out; } ;
struct vbg_ioctl_check_balloon {TYPE_3__ u; int hdr; } ;
struct TYPE_4__ {int chunks; } ;
struct vbg_dev {TYPE_1__ mem_balloon; } ;


 int EINVAL ;
 scalar_t__ vbg_ioctl_chk (int *,int ,int) ;

__attribute__((used)) static int vbg_ioctl_check_balloon(struct vbg_dev *gdev,
       struct vbg_ioctl_check_balloon *balloon_info)
{
 if (vbg_ioctl_chk(&balloon_info->hdr, 0, sizeof(balloon_info->u.out)))
  return -EINVAL;

 balloon_info->u.out.balloon_chunks = gdev->mem_balloon.chunks;




 balloon_info->u.out.handle_in_r3 = 0;

 return 0;
}

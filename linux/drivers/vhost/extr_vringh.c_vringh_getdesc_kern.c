
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vringh_kiov {int dummy; } ;
struct TYPE_2__ {int num; } ;
struct vringh {TYPE_1__ vring; int last_avail_idx; } ;
typedef int gfp_t ;


 int __vringh_get_head (struct vringh*,int ,int *) ;
 int __vringh_iov (struct vringh*,int,struct vringh_kiov*,struct vringh_kiov*,int ,int *,int ,int ) ;
 int copydesc_kern ;
 int getu16_kern ;
 int no_range_check ;

int vringh_getdesc_kern(struct vringh *vrh,
   struct vringh_kiov *riov,
   struct vringh_kiov *wiov,
   u16 *head,
   gfp_t gfp)
{
 int err;

 err = __vringh_get_head(vrh, getu16_kern, &vrh->last_avail_idx);
 if (err < 0)
  return err;


 if (err == vrh->vring.num)
  return 0;

 *head = err;
 err = __vringh_iov(vrh, *head, riov, wiov, no_range_check, ((void*)0),
      gfp, copydesc_kern);
 if (err)
  return err;

 return 1;
}

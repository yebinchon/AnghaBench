
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vringh {int dummy; } ;
struct vring_used_elem {int dummy; } ;


 int __vringh_complete (struct vringh*,struct vring_used_elem const*,unsigned int,int ,int ) ;
 int putu16_user ;
 int putused_user ;

int vringh_complete_multi_user(struct vringh *vrh,
          const struct vring_used_elem used[],
          unsigned num_used)
{
 return __vringh_complete(vrh, used, num_used,
     putu16_user, putused_user);
}

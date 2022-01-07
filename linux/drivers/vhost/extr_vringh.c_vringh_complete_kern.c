
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct vringh {int dummy; } ;
struct vring_used_elem {void* len; void* id; } ;


 int __vringh_complete (struct vringh*,struct vring_used_elem*,int,int ,int ) ;
 void* cpu_to_vringh32 (struct vringh*,int ) ;
 int putu16_kern ;
 int putused_kern ;

int vringh_complete_kern(struct vringh *vrh, u16 head, u32 len)
{
 struct vring_used_elem used;

 used.id = cpu_to_vringh32(vrh, head);
 used.len = cpu_to_vringh32(vrh, len);

 return __vringh_complete(vrh, &used, 1, putu16_kern, putused_kern);
}

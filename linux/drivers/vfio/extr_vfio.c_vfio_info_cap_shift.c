
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_info_cap_header {int next; } ;
struct vfio_info_cap {scalar_t__ buf; } ;



void vfio_info_cap_shift(struct vfio_info_cap *caps, size_t offset)
{
 struct vfio_info_cap_header *tmp;
 void *buf = (void *)caps->buf;

 for (tmp = buf; tmp->next; tmp = buf + tmp->next - offset)
  tmp->next += offset;
}

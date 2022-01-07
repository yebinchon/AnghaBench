
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_info_cap_header {int version; int id; } ;
struct vfio_info_cap {int dummy; } ;


 scalar_t__ IS_ERR (struct vfio_info_cap_header*) ;
 int PTR_ERR (struct vfio_info_cap_header*) ;
 int memcpy (struct vfio_info_cap_header*,struct vfio_info_cap_header*,size_t) ;
 struct vfio_info_cap_header* vfio_info_cap_add (struct vfio_info_cap*,size_t,int ,int ) ;

int vfio_info_add_capability(struct vfio_info_cap *caps,
        struct vfio_info_cap_header *cap, size_t size)
{
 struct vfio_info_cap_header *header;

 header = vfio_info_cap_add(caps, size, cap->id, cap->version);
 if (IS_ERR(header))
  return PTR_ERR(header);

 memcpy(header + 1, cap + 1, size - sizeof(*header));

 return 0;
}

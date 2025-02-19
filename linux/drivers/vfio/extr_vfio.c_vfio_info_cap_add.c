
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct vfio_info_cap_header {int next; void* version; void* id; } ;
struct vfio_info_cap {int size; void* buf; } ;


 int ENOMEM ;
 struct vfio_info_cap_header* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* krealloc (void*,int,int ) ;
 int memset (struct vfio_info_cap_header*,int ,size_t) ;

struct vfio_info_cap_header *vfio_info_cap_add(struct vfio_info_cap *caps,
            size_t size, u16 id, u16 version)
{
 void *buf;
 struct vfio_info_cap_header *header, *tmp;

 buf = krealloc(caps->buf, caps->size + size, GFP_KERNEL);
 if (!buf) {
  kfree(caps->buf);
  caps->size = 0;
  return ERR_PTR(-ENOMEM);
 }

 caps->buf = buf;
 header = buf + caps->size;


 memset(header, 0, size);

 header->id = id;
 header->version = version;


 for (tmp = buf; tmp->next; tmp = buf + tmp->next)
  ;

 tmp->next = caps->size;
 caps->size += size;

 return header;
}

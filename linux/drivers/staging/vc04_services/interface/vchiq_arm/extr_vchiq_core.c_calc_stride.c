
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_header {int dummy; } ;



__attribute__((used)) static inline size_t
calc_stride(size_t size)
{

 size += sizeof(struct vchiq_header);


 return (size + sizeof(struct vchiq_header) - 1) &
  ~(sizeof(struct vchiq_header) - 1);
}

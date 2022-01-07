
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_used_elem {int dummy; } ;


 int memcpy (struct vring_used_elem*,struct vring_used_elem const*,unsigned int) ;

__attribute__((used)) static inline int putused_kern(struct vring_used_elem *dst,
          const struct vring_used_elem *src,
          unsigned int num)
{
 memcpy(dst, src, num * sizeof(*dst));
 return 0;
}

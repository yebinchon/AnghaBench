
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;


 scalar_t__ is_vmalloc_addr (void const*) ;
 int offset_in_page (void const*) ;
 int sg_set_page (struct scatterlist*,void*,unsigned int,int ) ;
 void* virt_to_page (void const*) ;
 void* vmalloc_to_page (void const*) ;

__attribute__((used)) static inline void smb2_sg_set_buf(struct scatterlist *sg, const void *buf,
       unsigned int buflen)
{
 void *addr;



 if (is_vmalloc_addr(buf))
  addr = vmalloc_to_page(buf);
 else
  addr = virt_to_page(buf);
 sg_set_page(sg, addr, buflen, offset_in_page(buf));
}

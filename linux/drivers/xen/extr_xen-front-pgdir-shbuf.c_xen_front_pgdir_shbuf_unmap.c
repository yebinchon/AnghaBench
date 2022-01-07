
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_front_pgdir_shbuf {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* unmap ) (struct xen_front_pgdir_shbuf*) ;} ;


 int stub1 (struct xen_front_pgdir_shbuf*) ;

int xen_front_pgdir_shbuf_unmap(struct xen_front_pgdir_shbuf *buf)
{
 if (buf->ops && buf->ops->unmap)
  return buf->ops->unmap(buf);


 return 0;
}

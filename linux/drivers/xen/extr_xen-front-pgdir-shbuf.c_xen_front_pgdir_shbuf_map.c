
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_front_pgdir_shbuf {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* map ) (struct xen_front_pgdir_shbuf*) ;} ;


 int stub1 (struct xen_front_pgdir_shbuf*) ;

int xen_front_pgdir_shbuf_map(struct xen_front_pgdir_shbuf *buf)
{
 if (buf->ops && buf->ops->map)
  return buf->ops->map(buf);


 return 0;
}

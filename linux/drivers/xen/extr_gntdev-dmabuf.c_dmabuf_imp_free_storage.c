
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct gntdev_dmabuf* refs; } ;
struct TYPE_4__ {TYPE_1__ imp; } ;
struct gntdev_dmabuf {TYPE_2__ u; struct gntdev_dmabuf* pages; } ;


 int kfree (struct gntdev_dmabuf*) ;

__attribute__((used)) static void dmabuf_imp_free_storage(struct gntdev_dmabuf *gntdev_dmabuf)
{
 kfree(gntdev_dmabuf->pages);
 kfree(gntdev_dmabuf->u.imp.refs);
 kfree(gntdev_dmabuf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_ctl {int frame_pool; } ;
struct TYPE_2__ {int buffer_phy; } ;
struct ctl_pkg {int buffer; TYPE_1__ frame; struct tb_ctl* ctl; } ;


 int GFP_KERNEL ;
 int dma_pool_alloc (int ,int ,int *) ;
 int kfree (struct ctl_pkg*) ;
 struct ctl_pkg* kzalloc (int,int ) ;

__attribute__((used)) static struct ctl_pkg *tb_ctl_pkg_alloc(struct tb_ctl *ctl)
{
 struct ctl_pkg *pkg = kzalloc(sizeof(*pkg), GFP_KERNEL);
 if (!pkg)
  return ((void*)0);
 pkg->ctl = ctl;
 pkg->buffer = dma_pool_alloc(ctl->frame_pool, GFP_KERNEL,
         &pkg->frame.buffer_phy);
 if (!pkg->buffer) {
  kfree(pkg);
  return ((void*)0);
 }
 return pkg;
}

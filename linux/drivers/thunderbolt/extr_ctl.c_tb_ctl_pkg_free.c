
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buffer_phy; } ;
struct ctl_pkg {TYPE_2__ frame; int buffer; TYPE_1__* ctl; } ;
struct TYPE_3__ {int frame_pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct ctl_pkg*) ;

__attribute__((used)) static void tb_ctl_pkg_free(struct ctl_pkg *pkg)
{
 if (pkg) {
  dma_pool_free(pkg->ctl->frame_pool,
         pkg->buffer, pkg->frame.buffer_phy);
  kfree(pkg);
 }
}

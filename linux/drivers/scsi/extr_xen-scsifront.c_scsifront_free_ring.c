
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sring; } ;
struct vscsifrnt_info {TYPE_1__ ring; int ring_ref; int irq; } ;


 int gnttab_end_foreign_access (int ,int ,unsigned long) ;
 int unbind_from_irqhandler (int ,struct vscsifrnt_info*) ;

__attribute__((used)) static void scsifront_free_ring(struct vscsifrnt_info *info)
{
 unbind_from_irqhandler(info->irq, info);
 gnttab_end_foreign_access(info->ring_ref, 0,
      (unsigned long)info->ring.sring);
}

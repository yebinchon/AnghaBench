
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int desc_count; int desc_avail; } ;
struct vnic_wq_copy {TYPE_1__ ring; } ;



__attribute__((used)) static inline unsigned int vnic_wq_copy_desc_in_use(struct vnic_wq_copy *wq)
{
 return wq->ring.desc_count - 1 - wq->ring.desc_avail;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int desc_avail; } ;
struct vnic_wq {TYPE_1__ ring; } ;



__attribute__((used)) static inline unsigned int vnic_wq_desc_avail(struct vnic_wq *wq)
{

 return wq->ring.desc_avail;
}

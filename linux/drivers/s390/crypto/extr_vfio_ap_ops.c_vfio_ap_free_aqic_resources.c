
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_ap_queue {scalar_t__ saved_isc; scalar_t__ saved_pfn; TYPE_1__* matrix_mdev; } ;
struct TYPE_2__ {int mdev; int kvm; } ;


 scalar_t__ VFIO_AP_ISC_INVALID ;
 int kvm_s390_gisc_unregister (int ,scalar_t__) ;
 int mdev_dev (int ) ;
 int vfio_unpin_pages (int ,scalar_t__*,int) ;

__attribute__((used)) static void vfio_ap_free_aqic_resources(struct vfio_ap_queue *q)
{
 if (q->saved_isc != VFIO_AP_ISC_INVALID && q->matrix_mdev)
  kvm_s390_gisc_unregister(q->matrix_mdev->kvm, q->saved_isc);
 if (q->saved_pfn && q->matrix_mdev)
  vfio_unpin_pages(mdev_dev(q->matrix_mdev->mdev),
     &q->saved_pfn, 1);
 q->saved_pfn = 0;
 q->saved_isc = VFIO_AP_ISC_INVALID;
}

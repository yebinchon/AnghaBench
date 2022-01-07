
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_ap_queue {int saved_isc; int apqn; } ;
struct ap_device {int device; } ;
struct TYPE_2__ {int qid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VFIO_AP_ISC_INVALID ;
 int dev_set_drvdata (int *,struct vfio_ap_queue*) ;
 struct vfio_ap_queue* kzalloc (int,int ) ;
 TYPE_1__* to_ap_queue (int *) ;

__attribute__((used)) static int vfio_ap_queue_dev_probe(struct ap_device *apdev)
{
 struct vfio_ap_queue *q;

 q = kzalloc(sizeof(*q), GFP_KERNEL);
 if (!q)
  return -ENOMEM;
 dev_set_drvdata(&apdev->device, q);
 q->apqn = to_ap_queue(&apdev->device)->qid;
 q->saved_isc = VFIO_AP_ISC_INVALID;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_ap_queue_reserved {unsigned long* apid; unsigned long* apqi; int reserved; } ;
struct TYPE_4__ {TYPE_1__* vfio_ap_drv; } ;
struct TYPE_3__ {int driver; } ;


 int EADDRNOTAVAIL ;
 int driver_for_each_device (int *,int *,struct vfio_ap_queue_reserved*,int ) ;
 TYPE_2__* matrix_dev ;
 int vfio_ap_has_queue ;

__attribute__((used)) static int vfio_ap_verify_queue_reserved(unsigned long *apid,
      unsigned long *apqi)
{
 int ret;
 struct vfio_ap_queue_reserved qres;

 qres.apid = apid;
 qres.apqi = apqi;
 qres.reserved = 0;

 ret = driver_for_each_device(&matrix_dev->vfio_ap_drv->driver, ((void*)0),
         &qres, vfio_ap_has_queue);
 if (ret)
  return ret;

 if (qres.reserved)
  return 0;

 return -EADDRNOTAVAIL;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* iscsi_ppm; } ;
struct cxgbit_device {TYPE_1__ lldi; } ;
struct cxgbi_ppm {int dummy; } ;



__attribute__((used)) static inline
struct cxgbi_ppm *cdev2ppm(struct cxgbit_device *cdev)
{
 return (struct cxgbi_ppm *)(*cdev->lldi.iscsi_ppm);
}

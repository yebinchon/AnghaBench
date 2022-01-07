
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_ap_queue {int apqn; } ;
struct device {int dummy; } ;


 struct vfio_ap_queue* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int match_apqn(struct device *dev, const void *data)
{
 struct vfio_ap_queue *q = dev_get_drvdata(dev);

 return (q->apqn == *(int *)(data)) ? 1 : 0;
}

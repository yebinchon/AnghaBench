
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scan_work; int reset_work; } ;
struct nvme_dev {TYPE_1__ ctrl; } ;
typedef int async_cookie_t ;


 int flush_work (int *) ;
 int nvme_put_ctrl (TYPE_1__*) ;

__attribute__((used)) static void nvme_async_probe(void *data, async_cookie_t cookie)
{
 struct nvme_dev *dev = data;

 flush_work(&dev->ctrl.reset_work);
 flush_work(&dev->ctrl.scan_work);
 nvme_put_ctrl(&dev->ctrl);
}

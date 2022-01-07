
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {TYPE_1__* config; } ;
struct TYPE_2__ {unsigned int (* get_status ) (struct virtio_device*) ;int (* set_status ) (struct virtio_device*,unsigned int) ;} ;


 int might_sleep () ;
 int stub1 (struct virtio_device*,unsigned int) ;
 unsigned int stub2 (struct virtio_device*) ;

void virtio_add_status(struct virtio_device *dev, unsigned int status)
{
 might_sleep();
 dev->config->set_status(dev, dev->config->get_status(dev) | status);
}

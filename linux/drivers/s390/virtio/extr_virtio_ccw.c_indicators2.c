
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_ccw_device {TYPE_1__* dma_area; } ;
struct TYPE_2__ {unsigned long indicators2; } ;



__attribute__((used)) static inline unsigned long *indicators2(struct virtio_ccw_device *vcdev)
{
 return &vcdev->dma_area->indicators2;
}

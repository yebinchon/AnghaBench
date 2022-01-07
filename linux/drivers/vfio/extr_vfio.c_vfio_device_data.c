
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_device {void* device_data; } ;



void *vfio_device_data(struct vfio_device *device)
{
 return device->device_data;
}

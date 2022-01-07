
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int ref_count; } ;


 scalar_t__ atomic_dec_return (int *) ;
 int dasd_put_device_wake (struct dasd_device*) ;

__attribute__((used)) static inline void
dasd_put_device(struct dasd_device *device)
{
 if (atomic_dec_return(&device->ref_count) == 0)
  dasd_put_device_wake(device);
}

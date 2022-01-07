
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void
dasd_get_device(struct dasd_device *device)
{
 atomic_inc(&device->ref_count);
}

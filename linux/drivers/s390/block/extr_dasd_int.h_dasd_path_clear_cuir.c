
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* path; } ;
struct TYPE_2__ {int flags; } ;


 int DASD_PATH_CUIR ;
 int __clear_bit (int ,int *) ;

__attribute__((used)) static inline void dasd_path_clear_cuir(struct dasd_device *device, int chp)
{
 __clear_bit(DASD_PATH_CUIR, &device->path[chp].flags);
}

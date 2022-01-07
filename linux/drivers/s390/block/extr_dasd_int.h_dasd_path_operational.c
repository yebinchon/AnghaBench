
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {int opm; TYPE_1__* path; } ;
struct TYPE_2__ {int flags; } ;


 int DASD_PATH_OPERATIONAL ;
 int __set_bit (int ,int *) ;

__attribute__((used)) static inline void dasd_path_operational(struct dasd_device *device, int chp)
{
 __set_bit(DASD_PATH_OPERATIONAL, &device->path[chp].flags);
 device->opm |= (0x80 >> chp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* path; } ;
struct TYPE_2__ {int flags; } ;


 int DASD_PATH_IFCC ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static inline void dasd_path_clear_ifcc(struct dasd_device *device, int chp)
{
 clear_bit(DASD_PATH_IFCC, &device->path[chp].flags);
}

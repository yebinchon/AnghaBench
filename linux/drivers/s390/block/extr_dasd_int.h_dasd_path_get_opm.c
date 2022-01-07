
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int opm; } ;
typedef int __u8 ;



__attribute__((used)) static inline __u8 dasd_path_get_opm(struct dasd_device *device)
{
 return device->opm;
}

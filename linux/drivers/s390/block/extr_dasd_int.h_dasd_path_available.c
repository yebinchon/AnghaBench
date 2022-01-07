
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;


 int dasd_path_clear_oper (struct dasd_device*,int) ;
 int dasd_path_verify (struct dasd_device*,int) ;

__attribute__((used)) static inline void dasd_path_available(struct dasd_device *device, int chp)
{
 dasd_path_clear_oper(device, chp);
 dasd_path_verify(device, chp);
}

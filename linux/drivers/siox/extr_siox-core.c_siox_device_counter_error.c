
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct siox_device {int dummy; } ;


 int SIOX_STATUS_COUNTER ;

__attribute__((used)) static bool siox_device_counter_error(struct siox_device *sdevice,
          u8 status_clean)
{
 return (status_clean & SIOX_STATUS_COUNTER) != 0;
}

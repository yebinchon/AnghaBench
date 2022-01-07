
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EEEPC_EC_FAN_HRPM ;
 int EEEPC_EC_FAN_LRPM ;
 int ec_read (int ,int*) ;

__attribute__((used)) static int eeepc_get_fan_rpm(void)
{
 u8 high = 0;
 u8 low = 0;

 ec_read(EEEPC_EC_FAN_HRPM, &high);
 ec_read(EEEPC_EC_FAN_LRPM, &low);
 return high << 8 | low;
}

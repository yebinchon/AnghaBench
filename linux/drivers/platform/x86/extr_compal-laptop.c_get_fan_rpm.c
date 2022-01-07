
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int FAN_ADDRESS ;
 scalar_t__ FAN_DATA ;
 int ec_transaction (int ,scalar_t__*,int,scalar_t__*,int) ;

__attribute__((used)) static int get_fan_rpm(void)
{
 u8 value, data = FAN_DATA;
 ec_transaction(FAN_ADDRESS, &data, 1, &value, 1);
 return 100 * (int)value;
}

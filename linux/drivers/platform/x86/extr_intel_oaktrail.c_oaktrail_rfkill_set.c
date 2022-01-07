
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;


 int OT_EC_DEVICE_STATE_ADDRESS ;
 int ec_read (int ,unsigned long*) ;
 int ec_write (int ,unsigned long) ;

__attribute__((used)) static int oaktrail_rfkill_set(void *data, bool blocked)
{
 u8 value;
 u8 result;
 unsigned long radio = (unsigned long) data;

 ec_read(OT_EC_DEVICE_STATE_ADDRESS, &result);

 if (!blocked)
  value = (u8) (result | radio);
 else
  value = (u8) (result & ~radio);

 ec_write(OT_EC_DEVICE_STATE_ADDRESS, value);

 return 0;
}

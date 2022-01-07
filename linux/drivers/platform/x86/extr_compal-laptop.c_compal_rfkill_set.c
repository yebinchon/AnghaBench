
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;


 int WIRELESS_ADDR ;
 unsigned long ec_read_u8 (int ) ;
 int ec_write (int ,unsigned long) ;

__attribute__((used)) static int compal_rfkill_set(void *data, bool blocked)
{
 unsigned long radio = (unsigned long) data;
 u8 result = ec_read_u8(WIRELESS_ADDR);
 u8 value;

 if (!blocked)
  value = (u8) (result | radio);
 else
  value = (u8) (result & ~radio);
 ec_write(WIRELESS_ADDR, value);

 return 0;
}

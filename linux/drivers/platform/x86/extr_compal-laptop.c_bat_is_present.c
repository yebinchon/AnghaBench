
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BAT_S1_EXISTS ;
 int BAT_STATUS2 ;
 int ec_read_u8 (int ) ;

__attribute__((used)) static int bat_is_present(void)
{
 u8 status = ec_read_u8(BAT_STATUS2);
 return ((status & BAT_S1_EXISTS) != 0);
}

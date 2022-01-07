
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int A1655_WIFI_COMMAND ;
 int A1655_WIFI_OFF ;
 int A1655_WIFI_ON ;
 int i8042_command (int *,int ) ;
 int i8042_lock_chip () ;
 int i8042_unlock_chip () ;

__attribute__((used)) static int amilo_a1655_rfkill_set_block(void *data, bool blocked)
{
 u8 param = blocked ? A1655_WIFI_OFF : A1655_WIFI_ON;
 int rc;

 i8042_lock_chip();
 rc = i8042_command(&param, A1655_WIFI_COMMAND);
 i8042_unlock_chip();
 return rc;
}

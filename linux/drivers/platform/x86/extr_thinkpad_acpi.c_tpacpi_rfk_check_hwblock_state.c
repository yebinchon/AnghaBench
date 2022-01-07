
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TPACPI_RFK_RADIO_OFF ;
 int hotkey_get_wlsw () ;
 int tpacpi_rfk_update_hwblock_state (int) ;

__attribute__((used)) static bool tpacpi_rfk_check_hwblock_state(void)
{
 int res = hotkey_get_wlsw();
 int hw_blocked;


 if (res < 0)
  return 0;

 hw_blocked = (res == TPACPI_RFK_RADIO_OFF);
 tpacpi_rfk_update_hwblock_state(hw_blocked);

 return hw_blocked;
}

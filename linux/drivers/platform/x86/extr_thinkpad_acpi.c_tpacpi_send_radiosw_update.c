
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SW_RFKILL_ALL ;
 int TPACPI_RFK_RADIO_OFF ;
 int TPACPI_RFK_RADIO_ON ;
 int hotkey_get_wlsw () ;
 int hotkey_radio_sw_notify_change () ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tpacpi_inputdev ;
 int tpacpi_inputdev_send_mutex ;
 int tpacpi_rfk_update_hwblock_state (int) ;
 int tpacpi_rfk_update_swstate_all () ;

__attribute__((used)) static void tpacpi_send_radiosw_update(void)
{
 int wlsw;
 wlsw = hotkey_get_wlsw();


 if (wlsw == TPACPI_RFK_RADIO_OFF)
  tpacpi_rfk_update_hwblock_state(1);


 tpacpi_rfk_update_swstate_all();


 if (wlsw == TPACPI_RFK_RADIO_ON)
  tpacpi_rfk_update_hwblock_state(0);


 if (!(wlsw < 0)) {
  mutex_lock(&tpacpi_inputdev_send_mutex);

  input_report_switch(tpacpi_inputdev,
        SW_RFKILL_ALL, (wlsw > 0));
  input_sync(tpacpi_inputdev);

  mutex_unlock(&tpacpi_inputdev_send_mutex);
 }





 hotkey_radio_sw_notify_change();
}

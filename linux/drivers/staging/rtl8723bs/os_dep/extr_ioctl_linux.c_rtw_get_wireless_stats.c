
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct noise_info {int bPauseDIG; int IGIValue; int max_time; int chan; } ;
struct net_device {int dummy; } ;
struct mlme_ext_priv {int cur_channel; } ;
struct TYPE_4__ {int qual; int level; int noise; int updated; } ;
struct iw_statistics {TYPE_2__ qual; } ;
struct hal_com_data {int odmpriv; } ;
struct TYPE_3__ {int signal_strength; int signal_qual; int noise; int rssi; } ;
struct adapter {struct iw_statistics iwstats; TYPE_1__ recvpriv; struct mlme_ext_priv mlmeextpriv; int mlmepriv; } ;


 int DBG_871X (char*,int,int,...) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HAL_ODM_NOISE_MONITOR ;
 int IW_QUAL_ALL_UPDATED ;
 int IW_QUAL_DBM ;
 int LeaveAllPowerSaveModeDirect (struct adapter*) ;
 int PS_DENY_IOCTL ;
 int _FW_LINKED ;
 int check_fwstate (int *,int ) ;
 scalar_t__ odm_SignalScaleMapping (int *,int) ;
 int rtw_hal_get_odm_var (struct adapter*,int ,int *,int*) ;
 int rtw_hal_set_odm_var (struct adapter*,int ,struct noise_info*,int) ;
 scalar_t__ rtw_linked_check (struct adapter*) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int rtw_ps_deny (struct adapter*,int ) ;
 int rtw_ps_deny_cancel (struct adapter*,int ) ;
 int translate_percentage_to_dbm (int) ;

__attribute__((used)) static struct iw_statistics *rtw_get_wireless_stats(struct net_device *dev)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 struct iw_statistics *piwstats =&padapter->iwstats;
 int tmp_level = 0;
 int tmp_qual = 0;
 int tmp_noise = 0;

 if (check_fwstate(&padapter->mlmepriv, _FW_LINKED) != 1) {
  piwstats->qual.qual = 0;
  piwstats->qual.level = 0;
  piwstats->qual.noise = 0;

 } else {
  tmp_level = padapter->recvpriv.signal_strength;



  tmp_qual = padapter->recvpriv.signal_qual;
  tmp_noise = padapter->recvpriv.noise;
  DBG_871X("level:%d, qual:%d, noise:%d, rssi (%d)\n", tmp_level, tmp_qual, tmp_noise, padapter->recvpriv.rssi);

  piwstats->qual.level = tmp_level;
  piwstats->qual.qual = tmp_qual;
  piwstats->qual.noise = tmp_noise;
 }
 piwstats->qual.updated = IW_QUAL_ALL_UPDATED ;





 return &padapter->iwstats;
}

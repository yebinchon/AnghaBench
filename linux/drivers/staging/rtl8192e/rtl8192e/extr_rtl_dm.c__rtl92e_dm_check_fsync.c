
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct r8192_priv {scalar_t__ undecorated_smoothed_pwdb; int framesync; scalar_t__ reset_count; scalar_t__ framesyncMonitor; TYPE_2__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ bfsync_enable; int fsync_state; TYPE_1__* pHTInfo; int fsync_seconddiff_ratethreshold; int fsync_firstdiff_ratethreshold; int fsync_rate_bitmap; int fsync_multiple_timeinterval; int fsync_time_interval; int fsync_rssi_threshold; } ;
struct TYPE_3__ {scalar_t__ IOTPeer; } ;


 int COMP_HALDM ;

 scalar_t__ HT_IOT_PEER_BROADCOM ;

 scalar_t__ RTLLIB_LINKED ;
 int RT_TRACE (int ,char*,int ,int ,int ) ;
 scalar_t__ RegC38_Default ;
 scalar_t__ RegC38_Fsync_AP_BCM ;
 scalar_t__ RegC38_NonFsync_Other_AP ;
 scalar_t__ RegC38_TH ;

 int _rtl92e_dm_end_hw_fsync (struct net_device*) ;
 int _rtl92e_dm_end_sw_fsync (struct net_device*) ;
 int _rtl92e_dm_start_hw_fsync (struct net_device*) ;
 int _rtl92e_dm_start_sw_fsync (struct net_device*) ;
 int rOFDM0_RxDetector3 ;
 int rtl92e_writeb (struct net_device*,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_check_fsync(struct net_device *dev)
{



 struct r8192_priv *priv = rtllib_priv(dev);
 static u8 reg_c38_State = 0;
 static u32 reset_cnt;

 RT_TRACE(COMP_HALDM,
   "RSSI %d TimeInterval %d MultipleTimeInterval %d\n",
   priv->rtllib->fsync_rssi_threshold,
   priv->rtllib->fsync_time_interval,
   priv->rtllib->fsync_multiple_timeinterval);
 RT_TRACE(COMP_HALDM,
   "RateBitmap 0x%x FirstDiffRateThreshold %d SecondDiffRateThreshold %d\n",
   priv->rtllib->fsync_rate_bitmap,
   priv->rtllib->fsync_firstdiff_ratethreshold,
   priv->rtllib->fsync_seconddiff_ratethreshold);

 if (priv->rtllib->state == RTLLIB_LINKED &&
     priv->rtllib->pHTInfo->IOTPeer == HT_IOT_PEER_BROADCOM) {
  if (priv->rtllib->bfsync_enable == 0) {
   switch (priv->rtllib->fsync_state) {
   case 130:
    _rtl92e_dm_start_hw_fsync(dev);
    priv->rtllib->fsync_state = 129;
    break;
   case 128:
    _rtl92e_dm_end_sw_fsync(dev);
    _rtl92e_dm_start_hw_fsync(dev);
    priv->rtllib->fsync_state = 129;
    break;
   case 129:
   default:
    break;
   }
  } else {
   switch (priv->rtllib->fsync_state) {
   case 130:
    _rtl92e_dm_start_sw_fsync(dev);
    priv->rtllib->fsync_state = 128;
    break;
   case 129:
    _rtl92e_dm_end_hw_fsync(dev);
    _rtl92e_dm_start_sw_fsync(dev);
    priv->rtllib->fsync_state = 128;
    break;
   case 128:
   default:
    break;

   }
  }
  if (priv->framesyncMonitor) {
   if (reg_c38_State != 2) {
    rtl92e_writeb(dev, rOFDM0_RxDetector3, 0x95);

    reg_c38_State = 2;
   }
  }
 } else {
  switch (priv->rtllib->fsync_state) {
  case 129:
   _rtl92e_dm_end_hw_fsync(dev);
   priv->rtllib->fsync_state = 130;
   break;
  case 128:
   _rtl92e_dm_end_sw_fsync(dev);
   priv->rtllib->fsync_state = 130;
   break;
  case 130:
  default:
   break;
  }

  if (priv->framesyncMonitor) {
   if (priv->rtllib->state == RTLLIB_LINKED) {
    if (priv->undecorated_smoothed_pwdb <=
        RegC38_TH) {
     if (reg_c38_State !=
         1) {
      rtl92e_writeb(dev,
             rOFDM0_RxDetector3,
             0x90);

      reg_c38_State =
           1;
     }
    } else if (priv->undecorated_smoothed_pwdb >=
        (RegC38_TH+5)) {
     if (reg_c38_State) {
      rtl92e_writeb(dev,
       rOFDM0_RxDetector3,
       priv->framesync);
      reg_c38_State = 0;
     }
    }
   } else {
    if (reg_c38_State) {
     rtl92e_writeb(dev, rOFDM0_RxDetector3,
            priv->framesync);
     reg_c38_State = 0;
    }
   }
  }
 }
 if (priv->framesyncMonitor) {
  if (priv->reset_count != reset_cnt) {
   rtl92e_writeb(dev, rOFDM0_RxDetector3,
           priv->framesync);
   reg_c38_State = 0;
   reset_cnt = priv->reset_count;
  }
 } else {
  if (reg_c38_State) {
   rtl92e_writeb(dev, rOFDM0_RxDetector3,
           priv->framesync);
   reg_c38_State = 0;
  }
 }
}

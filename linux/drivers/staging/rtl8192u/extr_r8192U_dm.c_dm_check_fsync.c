
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct r8192_priv {scalar_t__ undecorated_smoothed_pwdb; int framesync; scalar_t__ reset_count; scalar_t__ framesyncMonitor; TYPE_2__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ bfsync_enable; int fsync_state; TYPE_1__* pHTInfo; int fsync_seconddiff_ratethreshold; int fsync_firstdiff_ratethreshold; int fsync_rate_bitmap; int fsync_multiple_timeinterval; int fsync_time_interval; int fsync_rssi_threshold; } ;
struct TYPE_3__ {int IOTAction; } ;


 int COMP_HALDM ;

 int HT_IOT_ACT_CDD_FSYNC ;

 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ REG_C38_TH ;
 int RT_TRACE (int ,char*,int ,int ,int ) ;
 scalar_t__ RegC38_Default ;
 scalar_t__ RegC38_Fsync_AP_BCM ;
 scalar_t__ RegC38_NonFsync_Other_AP ;

 int dm_EndHWFsync (struct net_device*) ;
 int dm_EndSWFsync (struct net_device*) ;
 int dm_StartHWFsync (struct net_device*) ;
 int dm_StartSWFsync (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rOFDM0_RxDetector3 ;
 int write_nic_byte (struct net_device*,int ,int) ;

void dm_check_fsync(struct net_device *dev)
{



 struct r8192_priv *priv = ieee80211_priv(dev);

 static u8 reg_c38_State = 0;
 static u32 reset_cnt;

 RT_TRACE(COMP_HALDM, "RSSI %d TimeInterval %d MultipleTimeInterval %d\n", priv->ieee80211->fsync_rssi_threshold, priv->ieee80211->fsync_time_interval, priv->ieee80211->fsync_multiple_timeinterval);
 RT_TRACE(COMP_HALDM, "RateBitmap 0x%x FirstDiffRateThreshold %d SecondDiffRateThreshold %d\n", priv->ieee80211->fsync_rate_bitmap, priv->ieee80211->fsync_firstdiff_ratethreshold, priv->ieee80211->fsync_seconddiff_ratethreshold);

 if (priv->ieee80211->state == IEEE80211_LINKED &&
  (priv->ieee80211->pHTInfo->IOTAction & HT_IOT_ACT_CDD_FSYNC)) {
  if (priv->ieee80211->bfsync_enable == 0) {
   switch (priv->ieee80211->fsync_state) {
   case 130:
    dm_StartHWFsync(dev);
    priv->ieee80211->fsync_state = 129;
    break;
   case 128:
    dm_EndSWFsync(dev);
    dm_StartHWFsync(dev);
    priv->ieee80211->fsync_state = 129;
    break;
   case 129:
   default:
    break;
   }
  } else {
   switch (priv->ieee80211->fsync_state) {
   case 130:
    dm_StartSWFsync(dev);
    priv->ieee80211->fsync_state = 128;
    break;
   case 129:
    dm_EndHWFsync(dev);
    dm_StartSWFsync(dev);
    priv->ieee80211->fsync_state = 128;
    break;
   case 128:
   default:
    break;
   }
  }
  if (priv->framesyncMonitor) {
   if (reg_c38_State != 2) {

    write_nic_byte(dev, rOFDM0_RxDetector3, 0x95);

    reg_c38_State = 2;
   }
  }
 } else {
  switch (priv->ieee80211->fsync_state) {
  case 129:
   dm_EndHWFsync(dev);
   priv->ieee80211->fsync_state = 130;
   break;
  case 128:
   dm_EndSWFsync(dev);
   priv->ieee80211->fsync_state = 130;
   break;
  case 130:
  default:
   break;
  }

  if (priv->framesyncMonitor) {
   if (priv->ieee80211->state == IEEE80211_LINKED) {
    if (priv->undecorated_smoothed_pwdb <= REG_C38_TH) {
     if (reg_c38_State != 1) {
      write_nic_byte(dev, rOFDM0_RxDetector3, 0x90);

      reg_c38_State = 1;
     }
    } else if (priv->undecorated_smoothed_pwdb >= (REG_C38_TH + 5)) {
     if (reg_c38_State) {
      write_nic_byte(dev, rOFDM0_RxDetector3, priv->framesync);
      reg_c38_State = 0;

     }
    }
   } else {
    if (reg_c38_State) {
     write_nic_byte(dev, rOFDM0_RxDetector3, priv->framesync);
     reg_c38_State = 0;

    }
   }
  }
 }
 if (priv->framesyncMonitor) {
  if (priv->reset_count != reset_cnt) {
   write_nic_byte(dev, rOFDM0_RxDetector3, priv->framesync);
   reg_c38_State = 0;
   reset_cnt = priv->reset_count;

  }
 } else {
  if (reg_c38_State) {
   write_nic_byte(dev, rOFDM0_RxDetector3, priv->framesync);
   reg_c38_State = 0;

  }
 }
}

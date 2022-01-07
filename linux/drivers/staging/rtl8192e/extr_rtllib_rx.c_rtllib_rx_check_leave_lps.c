
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int NumRxUnicastOkInPeriod; int NumTxOkInPeriod; } ;
struct rtllib_device {scalar_t__ state; int last_rx_ps_time; int dev; int (* LeisurePSLeave ) (int ) ;TYPE_1__ LinkDetectInfo; } ;


 scalar_t__ RTLLIB_LINKED ;
 int jiffies ;
 int stub1 (int ) ;

__attribute__((used)) static void rtllib_rx_check_leave_lps(struct rtllib_device *ieee, u8 unicast,
          u8 nr_subframes)
{
 if (unicast) {

  if (ieee->state == RTLLIB_LINKED) {
   if (((ieee->LinkDetectInfo.NumRxUnicastOkInPeriod +
       ieee->LinkDetectInfo.NumTxOkInPeriod) > 8) ||
       (ieee->LinkDetectInfo.NumRxUnicastOkInPeriod > 2)) {
    if (ieee->LeisurePSLeave)
     ieee->LeisurePSLeave(ieee->dev);
   }
  }
 }
 ieee->last_rx_ps_time = jiffies;
}

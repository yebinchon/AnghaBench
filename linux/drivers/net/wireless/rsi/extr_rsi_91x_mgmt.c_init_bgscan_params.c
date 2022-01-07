
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int two_probe; int passive_scan_duration; int active_scan_duration; scalar_t__ num_bgscan_channels; int bgscan_periodicity; int roam_threshold; int bgscan_threshold; } ;
struct rsi_common {TYPE_1__ bgscan; } ;
struct rsi_bgscan_params {int dummy; } ;


 int RSI_ACTIVE_SCAN_TIME ;
 int RSI_BGSCAN_PERIODICITY ;
 int RSI_DEF_BGSCAN_THRLD ;
 int RSI_DEF_ROAM_THRLD ;
 int RSI_PASSIVE_SCAN_TIME ;
 int memset (int *,int ,int) ;

void init_bgscan_params(struct rsi_common *common)
{
 memset((u8 *)&common->bgscan, 0, sizeof(struct rsi_bgscan_params));
 common->bgscan.bgscan_threshold = RSI_DEF_BGSCAN_THRLD;
 common->bgscan.roam_threshold = RSI_DEF_ROAM_THRLD;
 common->bgscan.bgscan_periodicity = RSI_BGSCAN_PERIODICITY;
 common->bgscan.num_bgscan_channels = 0;
 common->bgscan.two_probe = 1;
 common->bgscan.active_scan_duration = RSI_ACTIVE_SCAN_TIME;
 common->bgscan.passive_scan_duration = RSI_PASSIVE_SCAN_TIME;
}

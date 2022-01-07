
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
typedef int s32 ;



__attribute__((used)) static int set_cqm_rssi_config(struct wiphy *wiphy, struct net_device *dev,
          s32 rssi_thold, u32 rssi_hyst)
{
 return 0;
}

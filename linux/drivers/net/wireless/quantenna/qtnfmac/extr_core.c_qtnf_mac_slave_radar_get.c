
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;


 int slave_radar ;

bool qtnf_mac_slave_radar_get(struct wiphy *wiphy)
{
 return slave_radar;
}

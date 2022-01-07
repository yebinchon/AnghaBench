
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;


 int wiphy_free (struct wiphy*) ;
 int wiphy_unregister (struct wiphy*) ;

__attribute__((used)) static void wlan_free_wiphy(struct wiphy *wiphy)
{
 wiphy_unregister(wiphy);
 wiphy_free(wiphy);
}

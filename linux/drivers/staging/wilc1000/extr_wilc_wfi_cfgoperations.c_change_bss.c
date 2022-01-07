
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct bss_parameters {int dummy; } ;



__attribute__((used)) static int change_bss(struct wiphy *wiphy, struct net_device *dev,
        struct bss_parameters *params)
{
 return 0;
}

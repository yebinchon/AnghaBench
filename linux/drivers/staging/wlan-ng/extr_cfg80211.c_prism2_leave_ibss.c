
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int prism2_leave_ibss(struct wiphy *wiphy, struct net_device *dev)
{
 return -EOPNOTSUPP;
}

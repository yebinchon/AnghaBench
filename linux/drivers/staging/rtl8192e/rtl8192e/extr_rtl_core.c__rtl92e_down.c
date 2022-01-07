
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int _rtl92e_sta_down (struct net_device*,int) ;

__attribute__((used)) static int _rtl92e_down(struct net_device *dev, bool shutdownrf)
{
 if (_rtl92e_sta_down(dev, shutdownrf) == -1)
  return -1;

 return 0;
}

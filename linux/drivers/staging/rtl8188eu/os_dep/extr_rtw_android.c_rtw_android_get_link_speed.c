
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 int rtw_get_cur_max_rate (struct adapter*) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int rtw_android_get_link_speed(struct net_device *net, char *command,
          int total_len)
{
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(net);
 u16 link_speed;

 link_speed = rtw_get_cur_max_rate(padapter) / 10;
 return snprintf(command, total_len, "LinkSpeed %d",
     link_speed);
}

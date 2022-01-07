
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct adapter {int bSurpriseRemoved; int bDriverStopped; } ;
typedef int off_t ;


 scalar_t__ rtw_netdev_priv (struct net_device*) ;
 scalar_t__ snprintf (char*,int,char*,int,int) ;

int proc_get_adapter_state(char *page, char **start,
     off_t offset, int count,
     int *eof, void *data)
{
 struct net_device *dev = data;
 struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
 int len = 0;

 len += snprintf(page + len, count - len, "bSurpriseRemoved=%d, bDriverStopped=%d\n",
      padapter->bSurpriseRemoved, padapter->bDriverStopped);

 *eof = 1;
 return len;
}

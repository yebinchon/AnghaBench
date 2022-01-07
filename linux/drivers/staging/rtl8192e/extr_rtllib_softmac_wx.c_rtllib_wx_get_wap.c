
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_2__ ap_addr; } ;
struct TYPE_3__ {int bssid; } ;
struct rtllib_device {scalar_t__ iw_mode; scalar_t__ state; scalar_t__ wap_set; int lock; TYPE_1__ current_network; } ;
struct iw_request_info {int dummy; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 scalar_t__ IW_MODE_MONITOR ;
 scalar_t__ RTLLIB_LINKED ;
 scalar_t__ RTLLIB_LINKED_SCANNING ;
 int eth_zero_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int rtllib_wx_get_wap(struct rtllib_device *ieee,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 unsigned long flags;

 wrqu->ap_addr.sa_family = ARPHRD_ETHER;

 if (ieee->iw_mode == IW_MODE_MONITOR)
  return -1;


 spin_lock_irqsave(&ieee->lock, flags);

 if (ieee->state != RTLLIB_LINKED &&
  ieee->state != RTLLIB_LINKED_SCANNING &&
  ieee->wap_set == 0)

  eth_zero_addr(wrqu->ap_addr.sa_data);
 else
  memcpy(wrqu->ap_addr.sa_data,
         ieee->current_network.bssid, ETH_ALEN);

 spin_unlock_irqrestore(&ieee->lock, flags);

 return 0;
}

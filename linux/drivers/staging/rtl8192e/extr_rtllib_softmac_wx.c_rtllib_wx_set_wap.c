
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct TYPE_2__ {int bssid; } ;
struct rtllib_device {short proto_started; scalar_t__ iw_mode; int wap_set; int cannot_notify; int wx_mutex; int lock; TYPE_1__ current_network; } ;
struct iw_request_info {int dummy; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 scalar_t__ IW_MODE_MASTER ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtllib_start_protocol (struct rtllib_device*) ;
 int rtllib_stop_protocol (struct rtllib_device*,int) ;
 int rtllib_stop_scan_syncro (struct rtllib_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int rtllib_wx_set_wap(struct rtllib_device *ieee,
    struct iw_request_info *info,
    union iwreq_data *awrq,
    char *extra)
{

 int ret = 0;
 unsigned long flags;

 short ifup = ieee->proto_started;
 struct sockaddr *temp = (struct sockaddr *)awrq;

 rtllib_stop_scan_syncro(ieee);

 mutex_lock(&ieee->wx_mutex);

 if (ieee->iw_mode == IW_MODE_MASTER) {
  ret = -1;
  goto out;
 }

 if (temp->sa_family != ARPHRD_ETHER) {
  ret = -EINVAL;
  goto out;
 }

 if (is_zero_ether_addr(temp->sa_data)) {
  spin_lock_irqsave(&ieee->lock, flags);
  ether_addr_copy(ieee->current_network.bssid, temp->sa_data);
  ieee->wap_set = 0;
  spin_unlock_irqrestore(&ieee->lock, flags);
  ret = -1;
  goto out;
 }


 if (ifup)
  rtllib_stop_protocol(ieee, 1);




 spin_lock_irqsave(&ieee->lock, flags);

 ieee->cannot_notify = 0;
 ether_addr_copy(ieee->current_network.bssid, temp->sa_data);
 ieee->wap_set = !is_zero_ether_addr(temp->sa_data);

 spin_unlock_irqrestore(&ieee->lock, flags);

 if (ifup)
  rtllib_start_protocol(ieee);
out:
 mutex_unlock(&ieee->wx_mutex);
 return ret;
}

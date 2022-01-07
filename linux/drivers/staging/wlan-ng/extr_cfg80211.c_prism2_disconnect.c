
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wlandevice {int dummy; } ;
struct wiphy {int dummy; } ;
struct TYPE_3__ {int len; int data; } ;
struct TYPE_4__ {TYPE_1__ data; } ;
struct p80211msg_lnxreq_autojoin {TYPE_2__ ssid; int msgcode; } ;
struct net_device {struct wlandevice* ml_priv; } ;


 int DIDMSG_LNXREQ_AUTOJOIN ;
 int EFAULT ;
 int memcpy (int ,char*,int) ;
 int p80211req_dorequest (struct wlandevice*,int *) ;

__attribute__((used)) static int prism2_disconnect(struct wiphy *wiphy, struct net_device *dev,
        u16 reason_code)
{
 struct wlandevice *wlandev = dev->ml_priv;
 struct p80211msg_lnxreq_autojoin msg_join;
 int result;
 int err = 0;


 msg_join.msgcode = DIDMSG_LNXREQ_AUTOJOIN;

 memcpy(msg_join.ssid.data.data, "---", 3);
 msg_join.ssid.data.len = 3;

 result = p80211req_dorequest(wlandev, (u8 *)&msg_join);

 if (result)
  err = -EFAULT;

 return err;
}

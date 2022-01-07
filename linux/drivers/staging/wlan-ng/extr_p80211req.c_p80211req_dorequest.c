
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlandevice {scalar_t__ msdstate; int request_pending; int (* mlmerequest ) (struct wlandevice*,struct p80211msg*) ;int name; int netdev; } ;
struct p80211msg {scalar_t__ msgcode; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ DIDMSG_DOT11REQ_MIBGET ;
 scalar_t__ DIDMSG_LNXREQ_IFSTATE ;
 int EBUSY ;
 int ENODEV ;
 int EPERM ;
 scalar_t__ WLAN_MSD_FWLOAD ;
 scalar_t__ WLAN_MSD_HWPRESENT ;
 scalar_t__ WLAN_MSD_RUNNING ;
 int capable (int ) ;
 int clear_bit (int,int *) ;
 int netdev_err (int ,char*,int ) ;
 int p80211req_handlemsg (struct wlandevice*,struct p80211msg*) ;
 int stub1 (struct wlandevice*,struct p80211msg*) ;
 scalar_t__ test_and_set_bit (int,int *) ;

int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
{
 struct p80211msg *msg = (struct p80211msg *)msgbuf;


 if (!((wlandev->msdstate == WLAN_MSD_HWPRESENT &&
        msg->msgcode == DIDMSG_LNXREQ_IFSTATE) ||
       wlandev->msdstate == WLAN_MSD_RUNNING ||
       wlandev->msdstate == WLAN_MSD_FWLOAD)) {
  return -ENODEV;
 }


 if (!capable(CAP_NET_ADMIN) &&
     (msg->msgcode != DIDMSG_DOT11REQ_MIBGET)) {
  netdev_err(wlandev->netdev,
      "%s: only dot11req_mibget allowed for non-root.\n",
      wlandev->name);
  return -EPERM;
 }


 if (test_and_set_bit(1, &wlandev->request_pending))
  return -EBUSY;




 p80211req_handlemsg(wlandev, msg);


 if (wlandev->mlmerequest)
  wlandev->mlmerequest(wlandev, msg);

 clear_bit(1, &wlandev->request_pending);
 return 0;
}

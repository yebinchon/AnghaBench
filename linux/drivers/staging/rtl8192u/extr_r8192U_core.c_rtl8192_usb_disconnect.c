
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct r8192_priv {int * pFirmware; } ;
struct net_device {int dummy; } ;


 int COMP_DOWN ;
 int RT_TRACE (int ,char*) ;
 int free_ieee80211 (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int kfree (int *) ;
 int rtl8192_down (struct net_device*) ;
 int rtl8192_proc_remove_one (struct net_device*) ;
 int rtl8192_usb_deleteendpoints (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 struct net_device* usb_get_intfdata (struct usb_interface*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void rtl8192_usb_disconnect(struct usb_interface *intf)
{
 struct net_device *dev = usb_get_intfdata(intf);
 struct r8192_priv *priv = ieee80211_priv(dev);

 unregister_netdev(dev);

 RT_TRACE(COMP_DOWN, "=============>wlan driver to be removed\n");
 rtl8192_proc_remove_one(dev);

 rtl8192_down(dev);
 kfree(priv->pFirmware);
 priv->pFirmware = ((void*)0);
 rtl8192_usb_deleteendpoints(dev);
 usleep_range(10000, 11000);
 free_ieee80211(dev);

 RT_TRACE(COMP_DOWN, "wlan driver removed\n");
}

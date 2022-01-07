
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int nsdcaps; int dot11_desired_bss_type; int tx_timeout; int set_multicast_list; int mlmerequest; int txframe; int reset; int close; int open; struct wlandevice* priv; int msdstate; int nsdname; } ;
struct hfa384x {int nsdcaps; int dot11_desired_bss_type; int tx_timeout; int set_multicast_list; int mlmerequest; int txframe; int reset; int close; int open; struct hfa384x* priv; int msdstate; int nsdname; } ;


 int GFP_KERNEL ;
 int P80211_NSDCAP_AUTOJOIN ;
 int P80211_NSDCAP_HWFRAGMENT ;
 int WLAN_MSD_HWPRESENT_PENDING ;
 int dev_info ;
 int hfa384x_tx_timeout ;
 int kfree (struct wlandevice*) ;
 struct wlandevice* kzalloc (int,int ) ;
 int prism2sta_close ;
 int prism2sta_mlmerequest ;
 int prism2sta_open ;
 int prism2sta_reset ;
 int prism2sta_setmulticast ;
 int prism2sta_txframe ;

__attribute__((used)) static struct wlandevice *create_wlan(void)
{
 struct wlandevice *wlandev = ((void*)0);
 struct hfa384x *hw = ((void*)0);


 wlandev = kzalloc(sizeof(*wlandev), GFP_KERNEL);
 hw = kzalloc(sizeof(*hw), GFP_KERNEL);

 if (!wlandev || !hw) {
  kfree(wlandev);
  kfree(hw);
  return ((void*)0);
 }


 wlandev->nsdname = dev_info;
 wlandev->msdstate = WLAN_MSD_HWPRESENT_PENDING;
 wlandev->priv = hw;
 wlandev->open = prism2sta_open;
 wlandev->close = prism2sta_close;
 wlandev->reset = prism2sta_reset;
 wlandev->txframe = prism2sta_txframe;
 wlandev->mlmerequest = prism2sta_mlmerequest;
 wlandev->set_multicast_list = prism2sta_setmulticast;
 wlandev->tx_timeout = hfa384x_tx_timeout;

 wlandev->nsdcaps = P80211_NSDCAP_HWFRAGMENT | P80211_NSDCAP_AUTOJOIN;


 hw->dot11_desired_bss_type = 1;

 return wlandev;
}

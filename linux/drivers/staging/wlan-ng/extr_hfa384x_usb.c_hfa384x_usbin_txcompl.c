
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union hfa384x_usbin {int type; } ;
typedef int u16 ;
struct wlandevice {int dummy; } ;


 scalar_t__ HFA384x_TXSTATUS_ISERROR (int ) ;
 int le16_to_cpu (int ) ;
 int prism2sta_ev_tx (struct wlandevice*,int ) ;
 int prism2sta_ev_txexc (struct wlandevice*,int ) ;

__attribute__((used)) static void hfa384x_usbin_txcompl(struct wlandevice *wlandev,
      union hfa384x_usbin *usbin)
{
 u16 status;

 status = le16_to_cpu(usbin->type);


 if (HFA384x_TXSTATUS_ISERROR(status))
  prism2sta_ev_txexc(wlandev, status);
 else
  prism2sta_ev_tx(wlandev, status);
}

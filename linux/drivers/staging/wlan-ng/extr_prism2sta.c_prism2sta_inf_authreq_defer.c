
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct wlandevice {int netdev; struct hfa384x* priv; } ;
struct TYPE_8__ {int algorithm; int * sta_addr; } ;
struct TYPE_9__ {TYPE_3__ authreq; } ;
struct hfa384x_inf_frame {TYPE_4__ info; } ;
struct hfa384x_authenticate_station_data {scalar_t__ status; int algorithm; int * address; } ;
struct TYPE_10__ {int cnt; int ** addr; } ;
struct TYPE_7__ {int cnt; int cnt1; int ** addr1; int ** addr; int modify; } ;
struct TYPE_6__ {int cnt; int cnt1; int ** addr1; int ** addr; int modify; } ;
struct hfa384x {int accessmode; TYPE_5__ authlist; TYPE_2__ deny; TYPE_1__ allow; } ;
typedef int rec ;


 int ETH_ALEN ;
 int HFA384x_RID_AUTHENTICATESTA ;
 int P80211ENUM_status_ap_full ;
 int P80211ENUM_status_successful ;
 int P80211ENUM_status_unspec_failure ;




 int WLAN_AUTH_MAX ;
 scalar_t__ cpu_to_le16 (int ) ;
 int ether_addr_copy (int *,int *) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 int hfa384x_drvr_setconfig (struct hfa384x*,int ,struct hfa384x_authenticate_station_data*,int) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static void prism2sta_inf_authreq_defer(struct wlandevice *wlandev,
     struct hfa384x_inf_frame *inf)
{
 struct hfa384x *hw = wlandev->priv;
 struct hfa384x_authenticate_station_data rec;

 int i, added, result, cnt;
 u8 *addr;






 ether_addr_copy(rec.address, inf->info.authreq.sta_addr);
 rec.status = cpu_to_le16(P80211ENUM_status_unspec_failure);





 switch (hw->accessmode) {
 case 128:






  for (i = 0; i < hw->authlist.cnt; i++)
   if (ether_addr_equal(rec.address,
          hw->authlist.addr[i])) {
    rec.status = cpu_to_le16(P80211ENUM_status_successful);
    break;
   }

  break;

 case 131:





  rec.status = cpu_to_le16(P80211ENUM_status_successful);
  break;

 case 130:
  if (hw->allow.modify == 0) {
   cnt = hw->allow.cnt;
   addr = hw->allow.addr[0];
  } else {
   cnt = hw->allow.cnt1;
   addr = hw->allow.addr1[0];
  }

  for (i = 0; i < cnt; i++, addr += ETH_ALEN)
   if (ether_addr_equal(rec.address, addr)) {
    rec.status = cpu_to_le16(P80211ENUM_status_successful);
    break;
   }

  break;

 case 129:
  if (hw->deny.modify == 0) {
   cnt = hw->deny.cnt;
   addr = hw->deny.addr[0];
  } else {
   cnt = hw->deny.cnt1;
   addr = hw->deny.addr1[0];
  }

  rec.status = cpu_to_le16(P80211ENUM_status_successful);

  for (i = 0; i < cnt; i++, addr += ETH_ALEN)
   if (ether_addr_equal(rec.address, addr)) {
    rec.status = cpu_to_le16(P80211ENUM_status_unspec_failure);
    break;
   }

  break;
 }
 added = 0;

 if (rec.status == cpu_to_le16(P80211ENUM_status_successful)) {
  for (i = 0; i < hw->authlist.cnt; i++)
   if (ether_addr_equal(rec.address,
          hw->authlist.addr[i]))
    break;

  if (i >= hw->authlist.cnt) {
   if (hw->authlist.cnt >= WLAN_AUTH_MAX) {
    rec.status = cpu_to_le16(P80211ENUM_status_ap_full);
   } else {
    ether_addr_copy(hw->authlist.addr[hw->authlist.cnt],
      rec.address);
    hw->authlist.cnt++;
    added = 1;
   }
  }
 }







 rec.algorithm = inf->info.authreq.algorithm;

 result = hfa384x_drvr_setconfig(hw, HFA384x_RID_AUTHENTICATESTA,
     &rec, sizeof(rec));
 if (result) {
  if (added)
   hw->authlist.cnt--;
  netdev_err(wlandev->netdev,
      "setconfig(authenticatestation) failed, result=%d\n",
      result);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wlandevice {int hostwep; } ;


 int P80211ENUM_truth_false ;
 int P80211ENUM_truth_true ;

__attribute__((used)) static void p80211req_handle_action(struct wlandevice *wlandev, u32 *data,
        int isget, u32 flag)
{
 if (isget) {
  if (wlandev->hostwep & flag)
   *data = P80211ENUM_truth_true;
  else
   *data = P80211ENUM_truth_false;
 } else {
  wlandev->hostwep &= ~flag;
  if (*data == P80211ENUM_truth_true)
   wlandev->hostwep |= flag;
 }
}

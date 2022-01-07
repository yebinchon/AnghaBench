
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlandevice {int netdev; struct hfa384x* priv; } ;
struct TYPE_3__ {int assocstatus; } ;
struct hfa384x_inf_frame {TYPE_1__ info; } ;
struct hfa384x_assoc_status {scalar_t__ assocstatus; scalar_t__ reason; int sta_addr; } ;
struct TYPE_4__ {int cnt; int* assoc; int * addr; } ;
struct hfa384x {TYPE_2__ authlist; } ;
typedef int rec ;


 scalar_t__ HFA384x_ASSOCSTATUS_AUTHFAIL ;
 scalar_t__ HFA384x_ASSOCSTATUS_REASSOC ;
 scalar_t__ HFA384x_ASSOCSTATUS_STAASSOC ;
 scalar_t__ ether_addr_equal (int ,int ) ;
 int le16_to_cpus (scalar_t__*) ;
 int memcpy (struct hfa384x_assoc_status*,int *,int) ;
 int netdev_warn (int ,char*) ;

__attribute__((used)) static void prism2sta_inf_assocstatus(struct wlandevice *wlandev,
          struct hfa384x_inf_frame *inf)
{
 struct hfa384x *hw = wlandev->priv;
 struct hfa384x_assoc_status rec;
 int i;

 memcpy(&rec, &inf->info.assocstatus, sizeof(rec));
 le16_to_cpus(&rec.assocstatus);
 le16_to_cpus(&rec.reason);
 for (i = 0; i < hw->authlist.cnt; i++)
  if (ether_addr_equal(rec.sta_addr, hw->authlist.addr[i]))
   break;

 if (i >= hw->authlist.cnt) {
  if (rec.assocstatus != HFA384x_ASSOCSTATUS_AUTHFAIL)
   netdev_warn(wlandev->netdev,
        "assocstatus info frame received for non-authenticated station.\n");
 } else {
  hw->authlist.assoc[i] =
      (rec.assocstatus == HFA384x_ASSOCSTATUS_STAASSOC ||
       rec.assocstatus == HFA384x_ASSOCSTATUS_REASSOC);

  if (rec.assocstatus == HFA384x_ASSOCSTATUS_AUTHFAIL)
   netdev_warn(wlandev->netdev,
        "authfail assocstatus info frame received for authenticated station.\n");
 }
}

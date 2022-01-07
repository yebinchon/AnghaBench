
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int framelen; } ;
struct TYPE_3__ {TYPE_2__ info; } ;
union hfa384x_usbin {TYPE_1__ infofrm; } ;
struct wlandevice {int dummy; } ;


 int le16_to_cpus (int *) ;
 int prism2sta_ev_info (struct wlandevice*,TYPE_2__*) ;

__attribute__((used)) static void hfa384x_usbin_info(struct wlandevice *wlandev,
          union hfa384x_usbin *usbin)
{
 le16_to_cpus(&usbin->infofrm.info.framelen);
 prism2sta_ev_info(wlandev, &usbin->infofrm.info);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlandevice {struct hfa384x* priv; } ;
struct TYPE_3__ {int linkstatus; } ;
struct TYPE_4__ {TYPE_1__ linkstatus; } ;
struct hfa384x_inf_frame {TYPE_2__ info; } ;
struct hfa384x {int link_bh; int link_status_new; } ;


 int le16_to_cpu (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void prism2sta_inf_linkstatus(struct wlandevice *wlandev,
         struct hfa384x_inf_frame *inf)
{
 struct hfa384x *hw = wlandev->priv;

 hw->link_status_new = le16_to_cpu(inf->info.linkstatus.linkstatus);

 schedule_work(&hw->link_bh);
}

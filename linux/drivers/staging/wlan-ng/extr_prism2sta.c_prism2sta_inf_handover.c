
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int dummy; } ;
struct hfa384x_inf_frame {int dummy; } ;


 int pr_debug (char*) ;

__attribute__((used)) static void prism2sta_inf_handover(struct wlandevice *wlandev,
       struct hfa384x_inf_frame *inf)
{
 pr_debug("received infoframe:HANDOVER (unhandled)\n");
}

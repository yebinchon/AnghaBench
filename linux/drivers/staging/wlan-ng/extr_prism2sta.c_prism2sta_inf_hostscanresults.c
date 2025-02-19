
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {struct hfa384x* priv; } ;
struct hfa384x_inf_frame {int framelen; } ;
struct hfa384x {int scanflag; int cmdq; int scanresults; } ;


 int GFP_ATOMIC ;
 int kfree (int ) ;
 int kmemdup (struct hfa384x_inf_frame*,int,int ) ;
 int pr_debug (char*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void prism2sta_inf_hostscanresults(struct wlandevice *wlandev,
       struct hfa384x_inf_frame *inf)
{
 struct hfa384x *hw = wlandev->priv;
 int nbss;

 nbss = (inf->framelen - 3) / 32;
 pr_debug("Received %d hostscan results\n", nbss);

 if (nbss > 32)
  nbss = 32;

 kfree(hw->scanresults);

 hw->scanresults = kmemdup(inf, sizeof(*inf), GFP_ATOMIC);

 if (nbss == 0)
  nbss = -1;


 hw->scanflag = nbss;
 wake_up_interruptible(&hw->cmdq);
}

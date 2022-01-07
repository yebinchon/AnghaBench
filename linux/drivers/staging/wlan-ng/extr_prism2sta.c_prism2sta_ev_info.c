
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlandevice {int netdev; } ;
struct hfa384x_inf_frame {int infotype; } ;
 int le16_to_cpus (int*) ;
 int netdev_warn (int ,char*,...) ;
 int prism2sta_inf_assocstatus (struct wlandevice*,struct hfa384x_inf_frame*) ;
 int prism2sta_inf_authreq (struct wlandevice*,struct hfa384x_inf_frame*) ;
 int prism2sta_inf_chinforesults (struct wlandevice*,struct hfa384x_inf_frame*) ;
 int prism2sta_inf_handover (struct wlandevice*,struct hfa384x_inf_frame*) ;
 int prism2sta_inf_hostscanresults (struct wlandevice*,struct hfa384x_inf_frame*) ;
 int prism2sta_inf_linkstatus (struct wlandevice*,struct hfa384x_inf_frame*) ;
 int prism2sta_inf_psusercnt (struct wlandevice*,struct hfa384x_inf_frame*) ;
 int prism2sta_inf_scanresults (struct wlandevice*,struct hfa384x_inf_frame*) ;
 int prism2sta_inf_tallies (struct wlandevice*,struct hfa384x_inf_frame*) ;

void prism2sta_ev_info(struct wlandevice *wlandev,
         struct hfa384x_inf_frame *inf)
{
 le16_to_cpus(&inf->infotype);

 switch (inf->infotype) {
 case 134:
  prism2sta_inf_handover(wlandev, inf);
  break;
 case 135:
  prism2sta_inf_tallies(wlandev, inf);
  break;
 case 133:
  prism2sta_inf_hostscanresults(wlandev, inf);
  break;
 case 128:
  prism2sta_inf_scanresults(wlandev, inf);
  break;
 case 136:
  prism2sta_inf_chinforesults(wlandev, inf);
  break;
 case 131:
  prism2sta_inf_linkstatus(wlandev, inf);
  break;
 case 138:
  prism2sta_inf_assocstatus(wlandev, inf);
  break;
 case 137:
  prism2sta_inf_authreq(wlandev, inf);
  break;
 case 129:
  prism2sta_inf_psusercnt(wlandev, inf);
  break;
 case 132:
  netdev_warn(wlandev->netdev, "Unhandled IT_KEYIDCHANGED\n");
  break;
 case 139:
  netdev_warn(wlandev->netdev, "Unhandled IT_ASSOCREQ\n");
  break;
 case 130:
  netdev_warn(wlandev->netdev, "Unhandled IT_MICFAILURE\n");
  break;
 default:
  netdev_warn(wlandev->netdev,
       "Unknown info type=0x%02x\n", inf->infotype);
  break;
 }
}

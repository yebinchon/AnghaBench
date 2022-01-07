
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wlandevice {TYPE_2__* netdev; } ;
struct TYPE_3__ {int tx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int pr_debug (char*,int ) ;

void prism2sta_ev_tx(struct wlandevice *wlandev, u16 status)
{
 pr_debug("Tx Complete, status=0x%04x\n", status);

 wlandev->netdev->stats.tx_packets++;
}

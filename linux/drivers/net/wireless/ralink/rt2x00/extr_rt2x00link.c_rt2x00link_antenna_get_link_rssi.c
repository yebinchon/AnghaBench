
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rx_success; } ;
struct link_ant {int rssi_ant; } ;
struct TYPE_4__ {TYPE_1__ qual; struct link_ant ant; } ;
struct rt2x00_dev {TYPE_2__ link; } ;


 int DEFAULT_RSSI ;
 int rt2x00link_get_avg_rssi (int *) ;

__attribute__((used)) static int rt2x00link_antenna_get_link_rssi(struct rt2x00_dev *rt2x00dev)
{
 struct link_ant *ant = &rt2x00dev->link.ant;

 if (rt2x00dev->link.qual.rx_success)
  return rt2x00link_get_avg_rssi(&ant->rssi_ant);

 return DEFAULT_RSSI;
}

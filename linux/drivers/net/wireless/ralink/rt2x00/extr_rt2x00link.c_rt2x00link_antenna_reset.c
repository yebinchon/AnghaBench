
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rssi_ant; } ;
struct TYPE_4__ {TYPE_1__ ant; } ;
struct rt2x00_dev {TYPE_2__ link; } ;


 int ewma_rssi_init (int *) ;

__attribute__((used)) static void rt2x00link_antenna_reset(struct rt2x00_dev *rt2x00dev)
{
 ewma_rssi_init(&rt2x00dev->link.ant.rssi_ant);
}

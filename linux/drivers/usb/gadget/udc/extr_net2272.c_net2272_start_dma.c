
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ plx9054_base_addr; } ;
struct net2272 {int dev_id; TYPE_1__ rdk1; } ;


 int CHANNEL_ENABLE ;
 int CHANNEL_START ;
 scalar_t__ DMACSR0 ;

 int writeb (int,scalar_t__) ;

__attribute__((used)) static void
net2272_start_dma(struct net2272 *dev)
{
}

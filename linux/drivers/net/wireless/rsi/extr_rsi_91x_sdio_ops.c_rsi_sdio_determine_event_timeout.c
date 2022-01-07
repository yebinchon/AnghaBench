
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsi_hw {scalar_t__ rsi_dev; } ;
struct TYPE_2__ {scalar_t__ buffer_full; } ;
struct rsi_91x_sdiodev {TYPE_1__ rx_info; } ;


 int EVENT_WAIT_FOREVER ;

int rsi_sdio_determine_event_timeout(struct rsi_hw *adapter)
{
 struct rsi_91x_sdiodev *dev =
  (struct rsi_91x_sdiodev *)adapter->rsi_dev;


 if (dev->rx_info.buffer_full)
  return 2;

 return EVENT_WAIT_FOREVER;
}

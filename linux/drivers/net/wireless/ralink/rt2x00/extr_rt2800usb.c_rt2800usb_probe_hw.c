
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct rt2x00_dev {int txdone_work; TYPE_1__ txstatus_timer; } ;


 int INIT_WORK (int *,int ) ;
 int rt2800_probe_hw (struct rt2x00_dev*) ;
 int rt2800usb_tx_sta_fifo_timeout ;
 int rt2800usb_work_txdone ;

__attribute__((used)) static int rt2800usb_probe_hw(struct rt2x00_dev *rt2x00dev)
{
 int retval;

 retval = rt2800_probe_hw(rt2x00dev);
 if (retval)
  return retval;




 rt2x00dev->txstatus_timer.function = rt2800usb_tx_sta_fifo_timeout;




 INIT_WORK(&rt2x00dev->txdone_work, rt2800usb_work_txdone);

 return 0;
}

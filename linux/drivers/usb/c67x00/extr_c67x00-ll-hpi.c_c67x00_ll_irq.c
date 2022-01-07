
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int msg_received; int last_msg; } ;
struct TYPE_4__ {TYPE_1__ lcp; } ;
struct c67x00_device {TYPE_2__ hpi; } ;


 int MBX_OUT_FLG ;
 int complete (int *) ;
 int hpi_recv_mbox (struct c67x00_device*) ;

void c67x00_ll_irq(struct c67x00_device *dev, u16 int_status)
{
 if ((int_status & MBX_OUT_FLG) == 0)
  return;

 dev->hpi.lcp.last_msg = hpi_recv_mbox(dev);
 complete(&dev->hpi.lcp.msg_received);
}

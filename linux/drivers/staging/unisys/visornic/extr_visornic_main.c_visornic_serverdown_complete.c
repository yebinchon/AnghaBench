
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ got_xmit_done; scalar_t__ sent_xmit; } ;
struct visornic_devdata {int server_down; int server_change_state; int (* server_down_complete_func ) (int ,int ) ;int dev; TYPE_1__ chstat; int num_rcvbuf_in_iovm; int irq_poll_timer; struct net_device* netdev; } ;
struct net_device {int dummy; } ;


 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 int dev_close (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void visornic_serverdown_complete(struct visornic_devdata *devdata)
{
 struct net_device *netdev = devdata->netdev;


 del_timer_sync(&devdata->irq_poll_timer);

 rtnl_lock();
 dev_close(netdev);
 rtnl_unlock();

 atomic_set(&devdata->num_rcvbuf_in_iovm, 0);
 devdata->chstat.sent_xmit = 0;
 devdata->chstat.got_xmit_done = 0;

 if (devdata->server_down_complete_func)
  (*devdata->server_down_complete_func)(devdata->dev, 0);

 devdata->server_down = 1;
 devdata->server_change_state = 0;
 devdata->server_down_complete_func = ((void*)0);
}

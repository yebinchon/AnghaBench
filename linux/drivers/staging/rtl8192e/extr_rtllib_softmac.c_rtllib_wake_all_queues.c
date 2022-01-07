
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int dev; } ;


 int netif_tx_wake_all_queues (int ) ;

void rtllib_wake_all_queues(struct rtllib_device *ieee)
{
 netif_tx_wake_all_queues(ieee->dev);
}

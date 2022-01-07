
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timer_list {int dummy; } ;
struct ql_adapter {int timer; int ndev; int pdev; } ;


 int HZ ;
 int STS ;
 struct ql_adapter* from_timer (int ,struct timer_list*,int ) ;
 int ifup ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_err (struct ql_adapter*,int ,int ,char*,int ) ;
 scalar_t__ pci_channel_offline (int ) ;
 struct ql_adapter* qdev ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int timer ;

__attribute__((used)) static void ql_timer(struct timer_list *t)
{
 struct ql_adapter *qdev = from_timer(qdev, t, timer);
 u32 var = 0;

 var = ql_read32(qdev, STS);
 if (pci_channel_offline(qdev->pdev)) {
  netif_err(qdev, ifup, qdev->ndev, "EEH STS = 0x%.08x.\n", var);
  return;
 }

 mod_timer(&qdev->timer, jiffies + (5*HZ));
}

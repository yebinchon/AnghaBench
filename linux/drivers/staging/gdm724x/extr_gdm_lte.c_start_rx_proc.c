
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_dev {int priv_dev; int (* rcv_func ) (int ,int ,struct phy_dev*,int ) ;} ;


 int MAX_RX_SUBMIT_COUNT ;
 int USB_COMPLETE ;
 int rx_complete ;
 int stub1 (int ,int ,struct phy_dev*,int ) ;

void start_rx_proc(struct phy_dev *phy_dev)
{
 int i;

 for (i = 0; i < MAX_RX_SUBMIT_COUNT; i++)
  phy_dev->rcv_func(phy_dev->priv_dev,
    rx_complete, phy_dev, USB_COMPLETE);
}

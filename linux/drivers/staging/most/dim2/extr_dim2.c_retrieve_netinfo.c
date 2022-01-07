
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mbo {int* virt_address; } ;
struct dim2_hdm {int link_state; int netinfo_waitq; int deliver_netinfo; int mac_addrs; } ;


 int memcpy (int ,int*,int) ;
 int pr_info (char*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void retrieve_netinfo(struct dim2_hdm *dev, struct mbo *mbo)
{
 u8 *data = mbo->virt_address;

 pr_info("Node Address: 0x%03x\n", (u16)data[16] << 8 | data[17]);
 dev->link_state = data[18];
 pr_info("NIState: %d\n", dev->link_state);
 memcpy(dev->mac_addrs, data + 19, 6);
 dev->deliver_netinfo++;
 wake_up_interruptible(&dev->netinfo_waitq);
}

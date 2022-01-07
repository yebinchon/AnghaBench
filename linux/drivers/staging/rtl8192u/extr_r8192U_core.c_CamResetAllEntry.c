
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int BIT (int) ;
 int RWCAM ;
 int write_nic_dword (struct net_device*,int ,int) ;

__attribute__((used)) static void CamResetAllEntry(struct net_device *dev)
{
 u32 ulcommand = 0;






 ulcommand |= BIT(31) | BIT(30);
 write_nic_dword(dev, RWCAM, ulcommand);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int BIT30 ;
 int BIT31 ;
 int RWCAM ;
 int rtl92e_writel (struct net_device*,int ,int) ;

void rtl92e_cam_reset(struct net_device *dev)
{
 u32 ulcommand = 0;

 ulcommand |= BIT31|BIT30;
 rtl92e_writel(dev, RWCAM, ulcommand);
}

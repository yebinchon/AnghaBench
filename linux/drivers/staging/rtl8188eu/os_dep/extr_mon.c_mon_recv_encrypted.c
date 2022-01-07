
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 scalar_t__ net_ratelimit () ;
 int netdev_info (struct net_device*,char*) ;

__attribute__((used)) static void mon_recv_encrypted(struct net_device *dev, const u8 *data,
          int data_len)
{
 if (net_ratelimit())
  netdev_info(dev, "Encrypted packets are not supported");
}

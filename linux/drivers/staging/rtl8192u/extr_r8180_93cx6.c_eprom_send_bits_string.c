
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int eprom_ck_cycle (struct net_device*) ;
 int eprom_w (struct net_device*,short) ;

__attribute__((used)) static void eprom_send_bits_string(struct net_device *dev, short b[], int len)
{
 int i;

 for (i = 0; i < len; i++) {
  eprom_w(dev, b[i]);
  eprom_ck_cycle(dev);
 }
}

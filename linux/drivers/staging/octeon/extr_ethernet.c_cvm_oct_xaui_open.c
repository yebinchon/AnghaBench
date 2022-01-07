
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int cvm_oct_common_open (struct net_device*,int ) ;
 int cvm_oct_link_poll ;

__attribute__((used)) static int cvm_oct_xaui_open(struct net_device *dev)
{
 return cvm_oct_common_open(dev, cvm_oct_link_poll);
}

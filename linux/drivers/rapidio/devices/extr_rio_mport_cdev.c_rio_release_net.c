
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_net {int id; } ;
struct device {int dummy; } ;


 int RDEV ;
 int kfree (struct rio_net*) ;
 int rmcd_debug (int ,char*,int ) ;
 struct rio_net* to_rio_net (struct device*) ;

__attribute__((used)) static void rio_release_net(struct device *dev)
{
 struct rio_net *net;

 net = to_rio_net(dev);
 rmcd_debug(RDEV, "net_%d", net->id);
 kfree(net);
}

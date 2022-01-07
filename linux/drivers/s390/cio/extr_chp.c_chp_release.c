
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct channel_path {int dummy; } ;


 int kfree (struct channel_path*) ;
 struct channel_path* to_channelpath (struct device*) ;

__attribute__((used)) static void chp_release(struct device *dev)
{
 struct channel_path *cp;

 cp = to_channelpath(dev);
 kfree(cp);
}

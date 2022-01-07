
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int schid; } ;
struct idset {int dummy; } ;
struct device {int dummy; } ;


 int idset_sch_del (struct idset*,int ) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static int __unset_registered(struct device *dev, void *data)
{
 struct idset *set = data;
 struct subchannel *sch = to_subchannel(dev);

 idset_sch_del(set, sch->schid);
 return 0;
}

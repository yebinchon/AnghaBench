
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_mport {int id; int name; } ;
struct device {int dummy; } ;


 int EXIT ;
 struct rio_mport* to_rio_mport (struct device*) ;
 int tsi_debug (int ,struct device*,char*,int ,int ) ;

__attribute__((used)) static void tsi721_mport_release(struct device *dev)
{
 struct rio_mport *mport = to_rio_mport(dev);

 tsi_debug(EXIT, dev, "%s id=%d", mport->name, mport->id);
}

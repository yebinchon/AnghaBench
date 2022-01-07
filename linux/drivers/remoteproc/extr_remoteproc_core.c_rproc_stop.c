
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct rproc {int name; int state; TYPE_1__* ops; int cached_table; int table_ptr; struct device dev; } ;
struct TYPE_2__ {int (* stop ) (struct rproc*) ;} ;


 int RPROC_OFFLINE ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int ) ;
 int rproc_stop_subdevices (struct rproc*,int) ;
 int rproc_unprepare_subdevices (struct rproc*) ;
 int stub1 (struct rproc*) ;

__attribute__((used)) static int rproc_stop(struct rproc *rproc, bool crashed)
{
 struct device *dev = &rproc->dev;
 int ret;


 rproc_stop_subdevices(rproc, crashed);


 rproc->table_ptr = rproc->cached_table;


 ret = rproc->ops->stop(rproc);
 if (ret) {
  dev_err(dev, "can't stop rproc: %d\n", ret);
  return ret;
 }

 rproc_unprepare_subdevices(rproc);

 rproc->state = RPROC_OFFLINE;

 dev_info(dev, "stopped remote processor %s\n", rproc->name);

 return 0;
}

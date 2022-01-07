
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct rproc {struct resource_table* cached_table; struct resource_table* table_ptr; TYPE_1__* ops; int name; int state; int table_sz; struct device dev; } ;
struct resource_table {int dummy; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int (* start ) (struct rproc*) ;int (* stop ) (struct rproc*) ;} ;


 int RPROC_RUNNING ;
 int dev_err (struct device*,char*,int,...) ;
 int dev_info (struct device*,char*,int ) ;
 int memcpy (struct resource_table*,struct resource_table*,int ) ;
 struct resource_table* rproc_find_loaded_rsc_table (struct rproc*,struct firmware const*) ;
 int rproc_load_segments (struct rproc*,struct firmware const*) ;
 int rproc_prepare_subdevices (struct rproc*) ;
 int rproc_start_subdevices (struct rproc*) ;
 int rproc_unprepare_subdevices (struct rproc*) ;
 int stub1 (struct rproc*) ;
 int stub2 (struct rproc*) ;

__attribute__((used)) static int rproc_start(struct rproc *rproc, const struct firmware *fw)
{
 struct resource_table *loaded_table;
 struct device *dev = &rproc->dev;
 int ret;


 ret = rproc_load_segments(rproc, fw);
 if (ret) {
  dev_err(dev, "Failed to load program segments: %d\n", ret);
  return ret;
 }
 loaded_table = rproc_find_loaded_rsc_table(rproc, fw);
 if (loaded_table) {
  memcpy(loaded_table, rproc->cached_table, rproc->table_sz);
  rproc->table_ptr = loaded_table;
 }

 ret = rproc_prepare_subdevices(rproc);
 if (ret) {
  dev_err(dev, "failed to prepare subdevices for %s: %d\n",
   rproc->name, ret);
  goto reset_table_ptr;
 }


 ret = rproc->ops->start(rproc);
 if (ret) {
  dev_err(dev, "can't start rproc %s: %d\n", rproc->name, ret);
  goto unprepare_subdevices;
 }


 ret = rproc_start_subdevices(rproc);
 if (ret) {
  dev_err(dev, "failed to probe subdevices for %s: %d\n",
   rproc->name, ret);
  goto stop_rproc;
 }

 rproc->state = RPROC_RUNNING;

 dev_info(dev, "remote processor %s is now up\n", rproc->name);

 return 0;

stop_rproc:
 rproc->ops->stop(rproc);
unprepare_subdevices:
 rproc_unprepare_subdevices(rproc);
reset_table_ptr:
 rproc->table_ptr = rproc->cached_table;

 return ret;
}

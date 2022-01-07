
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int config_size; } ;
struct TYPE_3__ {int end; scalar_t__ start; int name; } ;
struct nvdimm_drvdata {int ns_current; int ns_next; TYPE_2__ nsarea; int kref; struct device* dev; TYPE_1__ dpa; } ;
struct device {int dummy; } ;


 int EACCES ;
 int ENOMEM ;
 int ENOTTY ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct nvdimm_drvdata*) ;
 int get_device (struct device*) ;
 int kref_init (int *) ;
 struct nvdimm_drvdata* kzalloc (int,int ) ;
 int nd_label_data_init (struct nvdimm_drvdata*) ;
 int nd_label_reserve_dpa (struct nvdimm_drvdata*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int nvdimm_check_config_data (struct device*) ;
 int nvdimm_clear_locked (struct device*) ;
 int nvdimm_init_nsarea (struct nvdimm_drvdata*) ;
 int nvdimm_security_setup_events (struct device*) ;
 int nvdimm_security_unlock (struct device*) ;
 int nvdimm_set_aliasing (struct device*) ;
 int nvdimm_set_locked (struct device*) ;
 int put_ndd (struct nvdimm_drvdata*) ;

__attribute__((used)) static int nvdimm_probe(struct device *dev)
{
 struct nvdimm_drvdata *ndd;
 int rc;

 rc = nvdimm_security_setup_events(dev);
 if (rc < 0) {
  dev_err(dev, "security event setup failed: %d\n", rc);
  return rc;
 }

 rc = nvdimm_check_config_data(dev);
 if (rc) {

  if (rc == -ENOTTY)
   rc = 0;
  return rc;
 }






 nvdimm_clear_locked(dev);

 ndd = kzalloc(sizeof(*ndd), GFP_KERNEL);
 if (!ndd)
  return -ENOMEM;

 dev_set_drvdata(dev, ndd);
 ndd->dpa.name = dev_name(dev);
 ndd->ns_current = -1;
 ndd->ns_next = -1;
 ndd->dpa.start = 0;
 ndd->dpa.end = -1;
 ndd->dev = dev;
 get_device(dev);
 kref_init(&ndd->kref);






 rc = nvdimm_security_unlock(dev);
 if (rc < 0)
  dev_dbg(dev, "failed to unlock dimm: %d\n", rc);







 rc = nvdimm_init_nsarea(ndd);
 if (rc == -EACCES) {





  nvdimm_set_locked(dev);
  rc = 0;
 }
 if (rc)
  goto err;







 rc = nd_label_data_init(ndd);
 if (rc == -EACCES)
  nvdimm_set_locked(dev);
 if (rc)
  goto err;

 dev_dbg(dev, "config data size: %d\n", ndd->nsarea.config_size);

 nvdimm_bus_lock(dev);
 if (ndd->ns_current >= 0) {
  rc = nd_label_reserve_dpa(ndd);
  if (rc == 0)
   nvdimm_set_aliasing(dev);
 }
 nvdimm_bus_unlock(dev);

 if (rc)
  goto err;

 return 0;

 err:
 put_ndd(ndd);
 return rc;
}

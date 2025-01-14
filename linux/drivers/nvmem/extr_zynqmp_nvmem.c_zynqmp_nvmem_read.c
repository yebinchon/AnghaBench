
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynqmp_nvmem_data {int dev; } ;
struct TYPE_2__ {int (* get_chipid ) (int*,int*) ;} ;


 int ENXIO ;
 int SILICON_REVISION_MASK ;
 int dev_dbg (int ,char*,int,int) ;
 TYPE_1__* eemi_ops ;
 int stub1 (int*,int*) ;

__attribute__((used)) static int zynqmp_nvmem_read(void *context, unsigned int offset,
        void *val, size_t bytes)
{
 int ret;
 int idcode, version;
 struct zynqmp_nvmem_data *priv = context;

 if (!eemi_ops->get_chipid)
  return -ENXIO;

 ret = eemi_ops->get_chipid(&idcode, &version);
 if (ret < 0)
  return ret;

 dev_dbg(priv->dev, "Read chipid val %x %x\n", idcode, version);
 *(int *)val = version & SILICON_REVISION_MASK;

 return 0;
}

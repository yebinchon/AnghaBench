
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int num_resources; char* resource; int dev; int name; } ;
struct TYPE_2__ {struct device_node* of_node; int module; int provider_name; int attr_groups; } ;
struct of_pmem_private {TYPE_1__ bus_desc; struct nvdimm_bus* bus; } ;
struct nvdimm_bus {int dummy; } ;
struct nd_region_desc {char* res; int flags; struct device_node* of_node; int numa_node; int target_node; int attr_groups; } ;
struct nd_region {int dummy; } ;
struct device_node {int dummy; } ;
typedef int ndr_desc ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int ND_REGION_PAGEMAP ;
 int THIS_MODULE ;
 int bus_attr_groups ;
 int dev_dbg (int *,char*,char*,struct device_node*) ;
 struct device_node* dev_of_node (int *) ;
 int dev_to_node (int *) ;
 int dev_warn (int *,char*,char*,struct device_node*) ;
 int kfree (struct of_pmem_private*) ;
 int kstrdup (int ,int ) ;
 struct of_pmem_private* kzalloc (int,int ) ;
 int memset (struct nd_region_desc*,int ,int) ;
 struct nvdimm_bus* nvdimm_bus_register (int *,TYPE_1__*) ;
 struct nd_region* nvdimm_pmem_region_create (struct nvdimm_bus*,struct nd_region_desc*) ;
 struct nd_region* nvdimm_volatile_region_create (struct nvdimm_bus*,struct nd_region_desc*) ;
 int of_find_property (struct device_node*,char*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct of_pmem_private*) ;
 int region_attr_groups ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int of_pmem_region_probe(struct platform_device *pdev)
{
 struct of_pmem_private *priv;
 struct device_node *np;
 struct nvdimm_bus *bus;
 bool is_volatile;
 int i;

 np = dev_of_node(&pdev->dev);
 if (!np)
  return -ENXIO;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->bus_desc.attr_groups = bus_attr_groups;
 priv->bus_desc.provider_name = kstrdup(pdev->name, GFP_KERNEL);
 priv->bus_desc.module = THIS_MODULE;
 priv->bus_desc.of_node = np;

 priv->bus = bus = nvdimm_bus_register(&pdev->dev, &priv->bus_desc);
 if (!bus) {
  kfree(priv);
  return -ENODEV;
 }
 platform_set_drvdata(pdev, priv);

 is_volatile = !!of_find_property(np, "volatile", ((void*)0));
 dev_dbg(&pdev->dev, "Registering %s regions from %pOF\n",
   is_volatile ? "volatile" : "non-volatile", np);

 for (i = 0; i < pdev->num_resources; i++) {
  struct nd_region_desc ndr_desc;
  struct nd_region *region;





  memset(&ndr_desc, 0, sizeof(ndr_desc));
  ndr_desc.attr_groups = region_attr_groups;
  ndr_desc.numa_node = dev_to_node(&pdev->dev);
  ndr_desc.target_node = ndr_desc.numa_node;
  ndr_desc.res = &pdev->resource[i];
  ndr_desc.of_node = np;
  set_bit(ND_REGION_PAGEMAP, &ndr_desc.flags);

  if (is_volatile)
   region = nvdimm_volatile_region_create(bus, &ndr_desc);
  else
   region = nvdimm_pmem_region_create(bus, &ndr_desc);

  if (!region)
   dev_warn(&pdev->dev, "Unable to register region %pR from %pOF\n",
     ndr_desc.res, np);
  else
   dev_dbg(&pdev->dev, "Registered region %pR from %pOF\n",
     ndr_desc.res, np);
 }

 return 0;
}

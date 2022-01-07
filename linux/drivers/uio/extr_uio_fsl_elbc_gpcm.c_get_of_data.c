
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int dummy; } ;
struct fsl_elbc_gpcm {char* name; int dev; int bank; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int check_of_data (struct fsl_elbc_gpcm*,struct resource*,int ,int ) ;
 int dev_err (int ,char*) ;
 unsigned int irq_of_parse_and_map (struct device_node*,int ) ;
 char* kstrdup (char const*,int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 scalar_t__ of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int setup_periph (struct fsl_elbc_gpcm*,char const*) ;

__attribute__((used)) static int get_of_data(struct fsl_elbc_gpcm *priv, struct device_node *node,
         struct resource *res, u32 *reg_br,
         u32 *reg_or, unsigned int *irq, char **name)
{
 const char *dt_name;
 const char *type;
 int ret;


 ret = of_address_to_resource(node, 0, res);
 if (ret) {
  dev_err(priv->dev, "failed to get resource\n");
  return ret;
 }


 ret = of_property_read_u32(node, "reg", &priv->bank);
 if (ret) {
  dev_err(priv->dev, "failed to get bank number\n");
  return ret;
 }


 ret = of_property_read_u32(node, "elbc-gpcm-br", reg_br);
 if (ret) {
  dev_err(priv->dev, "missing elbc-gpcm-br value\n");
  return ret;
 }


 ret = of_property_read_u32(node, "elbc-gpcm-or", reg_or);
 if (ret) {
  dev_err(priv->dev, "missing elbc-gpcm-or value\n");
  return ret;
 }


 priv->name = "generic";
 if (of_property_read_string(node, "device_type", &type) == 0)
  setup_periph(priv, type);


 *irq = irq_of_parse_and_map(node, 0);


 ret = check_of_data(priv, res, *reg_br, *reg_or);
 if (ret)
  return ret;


 if (of_property_read_string(node, "uio_name", &dt_name) != 0)
  dt_name = "eLBC_GPCM";
 *name = kstrdup(dt_name, GFP_KERNEL);
 if (!*name)
  return -ENOMEM;

 return 0;
}

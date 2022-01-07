
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct s3c64xx_spi_csinfo {int fb_delay; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct s3c64xx_spi_csinfo* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_err (TYPE_1__*,char*) ;
 struct s3c64xx_spi_csinfo* kzalloc (int,int ) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct s3c64xx_spi_csinfo *s3c64xx_get_slave_ctrldata(
    struct spi_device *spi)
{
 struct s3c64xx_spi_csinfo *cs;
 struct device_node *slave_np, *data_np = ((void*)0);
 u32 fb_delay = 0;

 slave_np = spi->dev.of_node;
 if (!slave_np) {
  dev_err(&spi->dev, "device node not found\n");
  return ERR_PTR(-EINVAL);
 }

 data_np = of_get_child_by_name(slave_np, "controller-data");
 if (!data_np) {
  dev_err(&spi->dev, "child node 'controller-data' not found\n");
  return ERR_PTR(-EINVAL);
 }

 cs = kzalloc(sizeof(*cs), GFP_KERNEL);
 if (!cs) {
  of_node_put(data_np);
  return ERR_PTR(-ENOMEM);
 }

 of_property_read_u32(data_np, "samsung,spi-feedback-delay", &fb_delay);
 cs->fb_delay = fb_delay;
 of_node_put(data_np);
 return cs;
}

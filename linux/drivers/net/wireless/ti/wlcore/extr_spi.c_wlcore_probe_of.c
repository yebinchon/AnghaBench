
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlcore_platdev_data {int ref_clock_xtal; int tcxo_clock_freq; int ref_clock_freq; TYPE_1__* family; } ;
struct wl12xx_spi_glue {int dummy; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct of_device_id {TYPE_1__* data; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int ENODEV ;
 int dev_info (TYPE_2__*,char*,int ) ;
 scalar_t__ of_find_property (struct device_node*,char*,int *) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int wlcore_spi_of_match_table ;

__attribute__((used)) static int wlcore_probe_of(struct spi_device *spi, struct wl12xx_spi_glue *glue,
      struct wlcore_platdev_data *pdev_data)
{
 struct device_node *dt_node = spi->dev.of_node;
 const struct of_device_id *of_id;

 of_id = of_match_node(wlcore_spi_of_match_table, dt_node);
 if (!of_id)
  return -ENODEV;

 pdev_data->family = of_id->data;
 dev_info(&spi->dev, "selected chip family is %s\n",
   pdev_data->family->name);

 if (of_find_property(dt_node, "clock-xtal", ((void*)0)))
  pdev_data->ref_clock_xtal = 1;


 of_property_read_u32(dt_node, "ref-clock-frequency",
        &pdev_data->ref_clock_freq);
 of_property_read_u32(dt_node, "tcxo-clock-frequency",
        &pdev_data->tcxo_clock_freq);

 return 0;
}

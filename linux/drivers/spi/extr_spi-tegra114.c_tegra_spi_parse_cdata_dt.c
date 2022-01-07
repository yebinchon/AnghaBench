
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_spi_client_data {int rx_clk_tap_delay; int tx_clk_tap_delay; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int dev_dbg (TYPE_1__*,char*) ;
 struct tegra_spi_client_data* kzalloc (int,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct tegra_spi_client_data
 *tegra_spi_parse_cdata_dt(struct spi_device *spi)
{
 struct tegra_spi_client_data *cdata;
 struct device_node *slave_np;

 slave_np = spi->dev.of_node;
 if (!slave_np) {
  dev_dbg(&spi->dev, "device node not found\n");
  return ((void*)0);
 }

 cdata = kzalloc(sizeof(*cdata), GFP_KERNEL);
 if (!cdata)
  return ((void*)0);

 of_property_read_u32(slave_np, "nvidia,tx-clk-tap-delay",
        &cdata->tx_clk_tap_delay);
 of_property_read_u32(slave_np, "nvidia,rx-clk-tap-delay",
        &cdata->rx_clk_tap_delay);
 return cdata;
}

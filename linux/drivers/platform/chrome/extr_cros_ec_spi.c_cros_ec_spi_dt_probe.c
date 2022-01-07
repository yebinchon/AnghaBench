
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct cros_ec_spi {void* end_of_msg_delay; void* start_of_msg_delay; } ;


 int of_property_read_u32 (struct device_node*,char*,void**) ;

__attribute__((used)) static void cros_ec_spi_dt_probe(struct cros_ec_spi *ec_spi, struct device *dev)
{
 struct device_node *np = dev->of_node;
 u32 val;
 int ret;

 ret = of_property_read_u32(np, "google,cros-ec-spi-pre-delay", &val);
 if (!ret)
  ec_spi->start_of_msg_delay = val;

 ret = of_property_read_u32(np, "google,cros-ec-spi-msg-delay", &val);
 if (!ret)
  ec_spi->end_of_msg_delay = val;
}

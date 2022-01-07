
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int spi; } ;
struct spi_master {int dummy; } ;


 int cdns_spi_config_clock_mode (int ) ;

__attribute__((used)) static int cdns_prepare_message(struct spi_master *master,
    struct spi_message *msg)
{
 cdns_spi_config_clock_mode(msg->spi);
 return 0;
}

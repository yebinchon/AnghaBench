
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_message {TYPE_1__* spi; } ;
struct spi_master {int dummy; } ;
struct lantiq_ssc_spi {int dummy; } ;
struct TYPE_2__ {int mode; } ;


 int hw_enter_active_mode (struct lantiq_ssc_spi*) ;
 int hw_enter_config_mode (struct lantiq_ssc_spi*) ;
 int hw_setup_clock_mode (struct lantiq_ssc_spi*,int ) ;
 struct lantiq_ssc_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int lantiq_ssc_prepare_message(struct spi_master *master,
          struct spi_message *message)
{
 struct lantiq_ssc_spi *spi = spi_master_get_devdata(master);

 hw_enter_config_mode(spi);
 hw_setup_clock_mode(spi, message->spi->mode);
 hw_enter_active_mode(spi);

 return 0;
}

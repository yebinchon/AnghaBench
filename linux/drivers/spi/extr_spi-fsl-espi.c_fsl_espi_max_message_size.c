
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 size_t SPCOM_TRANLEN_MAX ;

__attribute__((used)) static size_t fsl_espi_max_message_size(struct spi_device *spi)
{
 return SPCOM_TRANLEN_MAX;
}

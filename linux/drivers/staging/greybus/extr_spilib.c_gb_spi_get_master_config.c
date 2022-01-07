
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gb_spilib {void* max_speed_hz; void* min_speed_hz; int num_chipselect; void* bits_per_word_mask; int flags; int mode; int connection; } ;
struct gb_spi_master_config_response {int max_speed_hz; int min_speed_hz; int num_chipselect; int bits_per_word_mask; int flags; int mode; } ;
typedef int response ;


 int GB_SPI_TYPE_MASTER_CONFIG ;
 int gb_operation_sync (int ,int ,int *,int ,struct gb_spi_master_config_response*,int) ;
 int gb_spi_flags_map (int ) ;
 int gb_spi_mode_map (int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;

__attribute__((used)) static int gb_spi_get_master_config(struct gb_spilib *spi)
{
 struct gb_spi_master_config_response response;
 u16 mode, flags;
 int ret;

 ret = gb_operation_sync(spi->connection, GB_SPI_TYPE_MASTER_CONFIG,
    ((void*)0), 0, &response, sizeof(response));
 if (ret < 0)
  return ret;

 mode = le16_to_cpu(response.mode);
 spi->mode = gb_spi_mode_map(mode);

 flags = le16_to_cpu(response.flags);
 spi->flags = gb_spi_flags_map(flags);

 spi->bits_per_word_mask = le32_to_cpu(response.bits_per_word_mask);
 spi->num_chipselect = response.num_chipselect;

 spi->min_speed_hz = le32_to_cpu(response.min_speed_hz);
 spi->max_speed_hz = le32_to_cpu(response.max_speed_hz);

 return 0;
}

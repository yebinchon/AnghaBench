
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct spi_master {int bus_num; } ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {int member_0; } ;
struct spi_board_info {int max_speed_hz; scalar_t__ chip_select; int bus_num; int mode; int modalias; TYPE_1__ member_0; } ;
struct gb_spilib {int connection; } ;
struct gb_spi_device_config_response {scalar_t__ device_type; int max_speed_hz; int mode; int name; } ;
struct gb_spi_device_config_request {scalar_t__ chip_select; } ;
typedef int response ;
typedef int request ;


 int EINVAL ;
 scalar_t__ GB_SPI_SPI_DEV ;
 scalar_t__ GB_SPI_SPI_MODALIAS ;
 scalar_t__ GB_SPI_SPI_NOR ;
 int GB_SPI_TYPE_DEVICE_CONFIG ;
 int gb_operation_sync (int ,int ,struct gb_spi_device_config_request*,int,struct gb_spi_device_config_response*,int) ;
 struct spi_master* get_master_from_spi (struct gb_spilib*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 struct spi_device* spi_new_device (struct spi_master*,struct spi_board_info*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int gb_spi_setup_device(struct gb_spilib *spi, u8 cs)
{
 struct spi_master *master = get_master_from_spi(spi);
 struct gb_spi_device_config_request request;
 struct gb_spi_device_config_response response;
 struct spi_board_info spi_board = { {0} };
 struct spi_device *spidev;
 int ret;
 u8 dev_type;

 request.chip_select = cs;

 ret = gb_operation_sync(spi->connection, GB_SPI_TYPE_DEVICE_CONFIG,
    &request, sizeof(request),
    &response, sizeof(response));
 if (ret < 0)
  return ret;

 dev_type = response.device_type;

 if (dev_type == GB_SPI_SPI_DEV)
  strlcpy(spi_board.modalias, "spidev",
   sizeof(spi_board.modalias));
 else if (dev_type == GB_SPI_SPI_NOR)
  strlcpy(spi_board.modalias, "spi-nor",
   sizeof(spi_board.modalias));
 else if (dev_type == GB_SPI_SPI_MODALIAS)
  memcpy(spi_board.modalias, response.name,
         sizeof(spi_board.modalias));
 else
  return -EINVAL;

 spi_board.mode = le16_to_cpu(response.mode);
 spi_board.bus_num = master->bus_num;
 spi_board.chip_select = cs;
 spi_board.max_speed_hz = le32_to_cpu(response.max_speed_hz);

 spidev = spi_new_device(master, &spi_board);
 if (!spidev)
  return -EINVAL;

 return 0;
}

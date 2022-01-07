
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint16_t ;
struct spi_xcomm {unsigned int settings; unsigned int chipselect; int i2c; int * buf; } ;


 int SPI_XCOMM_CMD_UPDATE_CONFIG ;
 unsigned int SPI_XCOMM_SETTINGS_LEN_OFFSET ;
 int i2c_master_send (int ,int *,int) ;
 int put_unaligned_be16 (unsigned int,int *) ;

__attribute__((used)) static int spi_xcomm_sync_config(struct spi_xcomm *spi_xcomm, unsigned int len)
{
 uint16_t settings;
 uint8_t *buf = spi_xcomm->buf;

 settings = spi_xcomm->settings;
 settings |= len << SPI_XCOMM_SETTINGS_LEN_OFFSET;

 buf[0] = SPI_XCOMM_CMD_UPDATE_CONFIG;
 put_unaligned_be16(settings, &buf[1]);
 put_unaligned_be16(spi_xcomm->chipselect, &buf[3]);

 return i2c_master_send(spi_xcomm->i2c, buf, 5);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sc18is602 {int freq; int speed; int ctrl; int client; } ;


 int SC18IS602_MODE_CLOCK_DIV_128 ;
 int SC18IS602_MODE_CLOCK_DIV_16 ;
 int SC18IS602_MODE_CLOCK_DIV_4 ;
 int SC18IS602_MODE_CLOCK_DIV_64 ;
 int SC18IS602_MODE_CPHA ;
 int SC18IS602_MODE_CPOL ;
 int SC18IS602_MODE_LSB_FIRST ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_LSB_FIRST ;
 int i2c_smbus_write_byte_data (int ,int,int) ;

__attribute__((used)) static int sc18is602_setup_transfer(struct sc18is602 *hw, u32 hz, u8 mode)
{
 u8 ctrl = 0;
 int ret;

 if (mode & SPI_CPHA)
  ctrl |= SC18IS602_MODE_CPHA;
 if (mode & SPI_CPOL)
  ctrl |= SC18IS602_MODE_CPOL;
 if (mode & SPI_LSB_FIRST)
  ctrl |= SC18IS602_MODE_LSB_FIRST;


 if (hz >= hw->freq / 4) {
  ctrl |= SC18IS602_MODE_CLOCK_DIV_4;
  hw->speed = hw->freq / 4;
 } else if (hz >= hw->freq / 16) {
  ctrl |= SC18IS602_MODE_CLOCK_DIV_16;
  hw->speed = hw->freq / 16;
 } else if (hz >= hw->freq / 64) {
  ctrl |= SC18IS602_MODE_CLOCK_DIV_64;
  hw->speed = hw->freq / 64;
 } else {
  ctrl |= SC18IS602_MODE_CLOCK_DIV_128;
  hw->speed = hw->freq / 128;
 }






 if (ctrl == hw->ctrl)
  return 0;

 ret = i2c_smbus_write_byte_data(hw->client, 0xf0, ctrl);
 if (ret < 0)
  return ret;

 hw->ctrl = ctrl;

 return 0;
}

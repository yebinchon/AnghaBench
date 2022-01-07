
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fbtft_par {TYPE_1__* info; TYPE_2__* spi; } ;
struct TYPE_4__ {int mode; } ;
struct TYPE_3__ {int device; } ;


 int SPI_CS_HIGH ;
 int dev_err (int ,char*) ;
 int gain ;
 int load ;
 int pot ;
 int pump ;
 int ratio ;
 int spi_setup (TYPE_2__*) ;
 int temp ;
 int write_reg (struct fbtft_par*,int) ;

__attribute__((used)) static int init_display(struct fbtft_par *par)
{
 int ret;


 par->spi->mode |= SPI_CS_HIGH;
 ret = spi_setup(par->spi);
 if (ret) {
  dev_err(par->info->device, "Could not set SPI_CS_HIGH\n");
  return ret;
 }


 write_reg(par, 0xE2);


 write_reg(par, 0xE8 | (ratio & 0x03));


 write_reg(par, 0x81);
 write_reg(par, (gain & 0x03) << 6 | (pot & 0x3F));


 write_reg(par, 0x24 | (temp & 0x03));


 write_reg(par, 0x28 | (load & 0x03));


 write_reg(par, 0x2C | (pump & 0x03));


 write_reg(par, 0xA6 | (0x01 & 0x01));


 write_reg(par, 0xD0 | (0x02 & 0x03));


 write_reg(par, 0xA8 | 0x07);

 return 0;
}

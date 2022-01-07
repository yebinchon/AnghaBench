
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ffen; scalar_t__ trm; scalar_t__ spi_en; int cs; scalar_t__ wl; } ;
union kp_spi_config {int reg; TYPE_1__ bitfield; } ;
struct spi_device {struct kp_spi_controller_state* controller_state; int chip_select; scalar_t__ bits_per_word; int master; } ;
struct kp_spi_controller_state {int conf_cache; int base; } ;
struct kp_spi {int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KP_SPI_REG_CONFIG ;
 int kp_spi_write_reg (struct kp_spi_controller_state*,int ,int ) ;
 struct kp_spi_controller_state* kzalloc (int,int ) ;
 struct kp_spi* spi_master_get_devdata (int ) ;

__attribute__((used)) static int
kp_spi_setup(struct spi_device *spidev)
{
 union kp_spi_config sc;
 struct kp_spi *kpspi = spi_master_get_devdata(spidev->master);
 struct kp_spi_controller_state *cs;


 cs = spidev->controller_state;
 if (!cs) {
  cs = kzalloc(sizeof(*cs), GFP_KERNEL);
  if (!cs)
   return -ENOMEM;
  cs->base = kpspi->base;
  cs->conf_cache = -1;
  spidev->controller_state = cs;
 }


 sc.bitfield.wl = spidev->bits_per_word - 1;
 sc.bitfield.cs = spidev->chip_select;
 sc.bitfield.spi_en = 0;
 sc.bitfield.trm = 0;
 sc.bitfield.ffen = 0;
 kp_spi_write_reg(spidev->controller_state, KP_SPI_REG_CONFIG, sc.reg);
 return 0;
}

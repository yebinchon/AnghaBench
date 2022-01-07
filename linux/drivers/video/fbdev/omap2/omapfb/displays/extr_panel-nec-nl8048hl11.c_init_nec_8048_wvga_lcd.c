
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct TYPE_3__ {int dat; int addr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* nec_8048_init_seq ;
 int nec_8048_spi_send (struct spi_device*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int init_nec_8048_wvga_lcd(struct spi_device *spi)
{
 unsigned int i;


 for (i = 0; i < (ARRAY_SIZE(nec_8048_init_seq) - 1); i++)
  nec_8048_spi_send(spi, nec_8048_init_seq[i].addr,
    nec_8048_init_seq[i].dat);
 udelay(20);
 nec_8048_spi_send(spi, nec_8048_init_seq[i].addr,
    nec_8048_init_seq[i].dat);
 return 0;
}

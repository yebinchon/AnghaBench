
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct spi_device {scalar_t__ bits_per_word; scalar_t__ max_speed_hz; int mode; } ;
struct pic32_spi {scalar_t__ bits_per_word; scalar_t__ speed_hz; int mode; TYPE_1__* regs; } ;
struct TYPE_2__ {int ctrl; } ;


 int CTRL_CKE ;
 int CTRL_CKP ;
 int CTRL_SMP ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int pic32_spi_set_clk_rate (struct pic32_spi*,scalar_t__) ;
 int pic32_spi_set_word_size (struct pic32_spi*,scalar_t__) ;
 int readl (int *) ;
 struct pic32_spi* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,int *) ;

__attribute__((used)) static int pic32_spi_prepare_message(struct spi_master *master,
         struct spi_message *msg)
{
 struct pic32_spi *pic32s = spi_master_get_devdata(master);
 struct spi_device *spi = msg->spi;
 u32 val;


 if (pic32s->bits_per_word != spi->bits_per_word) {
  pic32_spi_set_word_size(pic32s, spi->bits_per_word);
  pic32s->bits_per_word = spi->bits_per_word;
 }


 if (pic32s->speed_hz != spi->max_speed_hz) {
  pic32_spi_set_clk_rate(pic32s, spi->max_speed_hz);
  pic32s->speed_hz = spi->max_speed_hz;
 }


 if (pic32s->mode != spi->mode) {
  val = readl(&pic32s->regs->ctrl);

  if (spi->mode & SPI_CPOL)
   val |= CTRL_CKP;
  else
   val &= ~CTRL_CKP;

  if (spi->mode & SPI_CPHA)
   val &= ~CTRL_CKE;
  else
   val |= CTRL_CKE;


  val |= CTRL_SMP;
  writel(val, &pic32s->regs->ctrl);
  pic32s->mode = spi->mode;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_spi {int dummy; } ;


 int SUN4I_FIFO_STA_REG ;
 int SUN4I_FIFO_STA_TF_CNT_BITS ;
 int SUN4I_FIFO_STA_TF_CNT_MASK ;
 int sun4i_spi_read (struct sun4i_spi*,int ) ;

__attribute__((used)) static inline u32 sun4i_spi_get_tx_fifo_count(struct sun4i_spi *sspi)
{
 u32 reg = sun4i_spi_read(sspi, SUN4I_FIFO_STA_REG);

 reg >>= SUN4I_FIFO_STA_TF_CNT_BITS;

 return reg & SUN4I_FIFO_STA_TF_CNT_MASK;
}

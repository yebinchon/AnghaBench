
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun6i_spi {int dummy; } ;


 int SUN6I_FIFO_STA_REG ;
 int SUN6I_FIFO_STA_TF_CNT_BITS ;
 int SUN6I_FIFO_STA_TF_CNT_MASK ;
 int sun6i_spi_read (struct sun6i_spi*,int ) ;

__attribute__((used)) static inline u32 sun6i_spi_get_tx_fifo_count(struct sun6i_spi *sspi)
{
 u32 reg = sun6i_spi_read(sspi, SUN6I_FIFO_STA_REG);

 reg >>= SUN6I_FIFO_STA_TF_CNT_BITS;

 return reg & SUN6I_FIFO_STA_TF_CNT_MASK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_spi {int word_delay; int src_clk; int hw_speed_hz; } ;
struct spi_transfer {int bits_per_word; } ;


 int DIV_ROUND_UP (int,int ) ;
 int SPRD_SPI_FIFO_SIZE ;
 int USEC_PER_SEC ;

__attribute__((used)) static u32 sprd_spi_transfer_max_timeout(struct sprd_spi *ss,
      struct spi_transfer *t)
{




 u32 size = t->bits_per_word * SPRD_SPI_FIFO_SIZE;
 u32 bit_time_us = DIV_ROUND_UP(USEC_PER_SEC, ss->hw_speed_hz);
 u32 total_time_us = size * bit_time_us;




 u32 interval_cycle = SPRD_SPI_FIFO_SIZE * ss->word_delay;
 u32 interval_time_us = DIV_ROUND_UP(interval_cycle * USEC_PER_SEC,
         ss->src_clk);

 return total_time_us + interval_time_us;
}

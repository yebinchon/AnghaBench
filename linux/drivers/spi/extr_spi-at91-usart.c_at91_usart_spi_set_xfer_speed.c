
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int speed_hz; } ;
struct at91_usart_spi {int spi_clk; } ;


 int BRGR ;
 int DIV_ROUND_UP (int ,int ) ;
 int at91_usart_spi_writel (struct at91_usart_spi*,int ,int ) ;

__attribute__((used)) static inline void
at91_usart_spi_set_xfer_speed(struct at91_usart_spi *aus,
         struct spi_transfer *xfer)
{
 at91_usart_spi_writel(aus, BRGR,
         DIV_ROUND_UP(aus->spi_clk, xfer->speed_hz));
}

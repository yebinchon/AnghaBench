
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_usart_spi {int dummy; } ;


 int CR ;
 int MR ;
 int US_DISABLE ;
 int US_INIT ;
 int US_RESET ;
 int at91_usart_spi_writel (struct at91_usart_spi*,int ,int) ;

__attribute__((used)) static void at91_usart_spi_init(struct at91_usart_spi *aus)
{
 at91_usart_spi_writel(aus, MR, US_INIT);
 at91_usart_spi_writel(aus, CR, US_RESET | US_DISABLE);
}

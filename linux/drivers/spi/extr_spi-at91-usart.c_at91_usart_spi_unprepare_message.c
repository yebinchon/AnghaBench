
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_message {int dummy; } ;
struct spi_controller {int dummy; } ;
struct at91_usart_spi {int dummy; } ;


 int CR ;
 int IDR ;
 int US_DISABLE ;
 int US_OVRE_RXRDY_IRQS ;
 int US_RESET ;
 int at91_usart_spi_writel (struct at91_usart_spi*,int ,int) ;
 struct at91_usart_spi* spi_master_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int at91_usart_spi_unprepare_message(struct spi_controller *ctlr,
         struct spi_message *message)
{
 struct at91_usart_spi *aus = spi_master_get_devdata(ctlr);

 at91_usart_spi_writel(aus, CR, US_RESET | US_DISABLE);
 at91_usart_spi_writel(aus, IDR, US_OVRE_RXRDY_IRQS);

 return 0;
}

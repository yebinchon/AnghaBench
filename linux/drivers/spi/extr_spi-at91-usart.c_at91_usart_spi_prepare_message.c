
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_message {struct spi_device* spi; } ;
struct spi_device {int * controller_state; } ;
struct spi_controller {int dummy; } ;
struct at91_usart_spi {int dummy; } ;


 int CR ;
 int IER ;
 int MR ;
 int US_ENABLE ;
 int US_OVRE_RXRDY_IRQS ;
 int at91_usart_spi_writel (struct at91_usart_spi*,int ,int ) ;
 struct at91_usart_spi* spi_master_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int at91_usart_spi_prepare_message(struct spi_controller *ctlr,
       struct spi_message *message)
{
 struct at91_usart_spi *aus = spi_master_get_devdata(ctlr);
 struct spi_device *spi = message->spi;
 u32 *ausd = spi->controller_state;

 at91_usart_spi_writel(aus, CR, US_ENABLE);
 at91_usart_spi_writel(aus, IER, US_OVRE_RXRDY_IRQS);
 at91_usart_spi_writel(aus, MR, *ausd);

 return 0;
}

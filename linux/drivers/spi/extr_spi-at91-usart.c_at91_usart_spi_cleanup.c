
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {struct at91_usart_spi_device* controller_state; } ;
struct at91_usart_spi_device {int dummy; } ;


 int kfree (struct at91_usart_spi_device*) ;

__attribute__((used)) static void at91_usart_spi_cleanup(struct spi_device *spi)
{
 struct at91_usart_spi_device *ausd = spi->controller_state;

 spi->controller_state = ((void*)0);
 kfree(ausd);
}

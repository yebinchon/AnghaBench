
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct at91_usart_spi {int status; } ;


 int CSR ;
 int at91_usart_spi_readl (struct at91_usart_spi*,int ) ;

__attribute__((used)) static inline u32 at91_usart_spi_read_status(struct at91_usart_spi *aus)
{
 aus->status = at91_usart_spi_readl(aus, CSR);
 return aus->status;
}

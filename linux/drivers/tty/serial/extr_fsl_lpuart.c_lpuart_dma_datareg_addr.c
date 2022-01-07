
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int iotype; scalar_t__ mapbase; } ;
struct lpuart_port {TYPE_1__ port; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ UARTDATA ;
 scalar_t__ UARTDR ;



__attribute__((used)) static dma_addr_t lpuart_dma_datareg_addr(struct lpuart_port *sport)
{
 switch (sport->port.iotype) {
 case 129:
  return sport->port.mapbase + UARTDATA;
 case 128:
  return sport->port.mapbase + UARTDATA + sizeof(u32) - 1;
 }
 return sport->port.mapbase + UARTDR;
}

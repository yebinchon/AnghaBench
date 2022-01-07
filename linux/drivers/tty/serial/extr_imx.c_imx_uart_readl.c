
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int membase; } ;
struct imx_port {int ucr1; int ucr2; int ucr3; int ucr4; int ufcr; TYPE_1__ port; } ;




 int UCR2_SRST ;



 int readl (int ) ;

__attribute__((used)) static u32 imx_uart_readl(struct imx_port *sport, u32 offset)
{
 switch (offset) {
 case 132:
  return sport->ucr1;
  break;
 case 131:






  if (!(sport->ucr2 & UCR2_SRST))
   sport->ucr2 = readl(sport->port.membase + offset);
  return sport->ucr2;
  break;
 case 130:
  return sport->ucr3;
  break;
 case 129:
  return sport->ucr4;
  break;
 case 128:
  return sport->ufcr;
  break;
 default:
  return readl(sport->port.membase + offset);
 }
}

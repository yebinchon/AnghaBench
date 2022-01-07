
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ membase; } ;
struct imx_port {int ucr1; int ucr2; int ucr3; int ucr4; int ufcr; TYPE_1__ port; } ;







 int writel (int,scalar_t__) ;

__attribute__((used)) static void imx_uart_writel(struct imx_port *sport, u32 val, u32 offset)
{
 switch (offset) {
 case 132:
  sport->ucr1 = val;
  break;
 case 131:
  sport->ucr2 = val;
  break;
 case 130:
  sport->ucr3 = val;
  break;
 case 129:
  sport->ucr4 = val;
  break;
 case 128:
  sport->ufcr = val;
  break;
 default:
  break;
 }
 writel(val, sport->port.membase + offset);
}

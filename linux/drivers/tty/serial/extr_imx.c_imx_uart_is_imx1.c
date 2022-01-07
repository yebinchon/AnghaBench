
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_port {TYPE_1__* devdata; } ;
struct TYPE_2__ {scalar_t__ devtype; } ;


 scalar_t__ IMX1_UART ;

__attribute__((used)) static inline int imx_uart_is_imx1(struct imx_port *sport)
{
 return sport->devdata->devtype == IMX1_UART;
}

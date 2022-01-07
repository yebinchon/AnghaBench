
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct imx_port {TYPE_1__* devdata; } ;
struct TYPE_2__ {int uts_reg; } ;



__attribute__((used)) static inline unsigned imx_uart_uts_reg(struct imx_port *sport)
{
 return sport->devdata->uts_reg;
}

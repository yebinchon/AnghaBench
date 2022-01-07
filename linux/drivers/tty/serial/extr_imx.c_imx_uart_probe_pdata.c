
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {TYPE_2__* id_entry; int id; int dev; } ;
struct imxuart_platform_data {int flags; } ;
struct imx_uart_data {int dummy; } ;
struct TYPE_3__ {int line; } ;
struct imx_port {int have_rtscts; struct imx_uart_data* devdata; TYPE_1__ port; } ;
struct TYPE_4__ {scalar_t__ driver_data; } ;


 int IMXUART_HAVE_RTSCTS ;
 struct imxuart_platform_data* dev_get_platdata (int *) ;

__attribute__((used)) static void imx_uart_probe_pdata(struct imx_port *sport,
     struct platform_device *pdev)
{
 struct imxuart_platform_data *pdata = dev_get_platdata(&pdev->dev);

 sport->port.line = pdev->id;
 sport->devdata = (struct imx_uart_data *) pdev->id_entry->driver_data;

 if (!pdata)
  return;

 if (pdata->flags & IMXUART_HAVE_RTSCTS)
  sport->have_rtscts = 1;
}

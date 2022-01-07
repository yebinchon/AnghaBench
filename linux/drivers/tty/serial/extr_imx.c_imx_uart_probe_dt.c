
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx_port {int dummy; } ;



__attribute__((used)) static inline int imx_uart_probe_dt(struct imx_port *sport,
        struct platform_device *pdev)
{
 return 1;
}

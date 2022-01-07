
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnx8xxx_port {int port; } ;
struct platform_device {int dummy; } ;


 struct pnx8xxx_port* platform_get_drvdata (struct platform_device*) ;
 int pnx8xxx_reg ;
 int uart_resume_port (int *,int *) ;

__attribute__((used)) static int pnx8xxx_serial_resume(struct platform_device *pdev)
{
 struct pnx8xxx_port *sport = platform_get_drvdata(pdev);

 return uart_resume_port(&pnx8xxx_reg, &sport->port);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 int S3C2410_UMSTAT ;
 unsigned int S3C2410_UMSTAT_CTS ;
 unsigned int TIOCM_CAR ;
 unsigned int TIOCM_CTS ;
 unsigned int TIOCM_DSR ;
 unsigned int rd_regb (struct uart_port*,int ) ;

__attribute__((used)) static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
{
 unsigned int umstat = rd_regb(port, S3C2410_UMSTAT);

 if (umstat & S3C2410_UMSTAT_CTS)
  return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
 else
  return TIOCM_CAR | TIOCM_DSR;
}

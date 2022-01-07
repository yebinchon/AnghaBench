
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 unsigned int S3C2410_UMCOM_RTS_LOW ;
 int S3C2410_UMCON ;
 unsigned int TIOCM_RTS ;
 unsigned int rd_regl (struct uart_port*,int ) ;
 int wr_regl (struct uart_port*,int ,unsigned int) ;

__attribute__((used)) static void s3c24xx_serial_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 unsigned int umcon = rd_regl(port, S3C2410_UMCON);

 if (mctrl & TIOCM_RTS)
  umcon |= S3C2410_UMCOM_RTS_LOW;
 else
  umcon &= ~S3C2410_UMCOM_RTS_LOW;

 wr_regl(port, S3C2410_UMCON, umcon);
}

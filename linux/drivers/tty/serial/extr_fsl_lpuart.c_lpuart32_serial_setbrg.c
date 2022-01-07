
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int uartclk; int dev; } ;
struct lpuart_port {TYPE_1__ port; int lpuart_dma_tx_use; int lpuart_dma_rx_use; } ;


 int UARTBAUD ;
 int UARTBAUD_BOTHEDGE ;
 int UARTBAUD_OSR_MASK ;
 int UARTBAUD_OSR_SHIFT ;
 int UARTBAUD_RDMAE ;
 int UARTBAUD_SBR_MASK ;
 int UARTBAUD_TDMAE ;
 int dev_warn (int ,char*) ;
 int lpuart32_read (TYPE_1__*,int ) ;
 int lpuart32_write (TYPE_1__*,int,int ) ;

__attribute__((used)) static void
lpuart32_serial_setbrg(struct lpuart_port *sport, unsigned int baudrate)
{
 u32 sbr, osr, baud_diff, tmp_osr, tmp_sbr, tmp_diff, tmp;
 u32 clk = sport->port.uartclk;
 baud_diff = baudrate;
 osr = 0;
 sbr = 0;

 for (tmp_osr = 4; tmp_osr <= 32; tmp_osr++) {

  tmp_sbr = (clk / (baudrate * tmp_osr));
  if (tmp_sbr == 0)
   tmp_sbr = 1;





  tmp_diff = clk / (tmp_osr * tmp_sbr) - baudrate;


  tmp = clk / (tmp_osr * (tmp_sbr + 1));
  if (tmp_diff > (baudrate - tmp)) {
   tmp_diff = baudrate - tmp;
   tmp_sbr++;
  }

  if (tmp_diff <= baud_diff) {
   baud_diff = tmp_diff;
   osr = tmp_osr;
   sbr = tmp_sbr;

   if (!baud_diff)
    break;
  }
 }


 if (baud_diff > ((baudrate / 100) * 3))
  dev_warn(sport->port.dev,
    "unacceptable baud rate difference of more than 3%%\n");

 tmp = lpuart32_read(&sport->port, UARTBAUD);

 if ((osr > 3) && (osr < 8))
  tmp |= UARTBAUD_BOTHEDGE;

 tmp &= ~(UARTBAUD_OSR_MASK << UARTBAUD_OSR_SHIFT);
 tmp |= ((osr-1) & UARTBAUD_OSR_MASK) << UARTBAUD_OSR_SHIFT;

 tmp &= ~UARTBAUD_SBR_MASK;
 tmp |= sbr & UARTBAUD_SBR_MASK;

 if (!sport->lpuart_dma_rx_use)
  tmp &= ~UARTBAUD_RDMAE;
 if (!sport->lpuart_dma_tx_use)
  tmp &= ~UARTBAUD_TDMAE;

 lpuart32_write(&sport->port, tmp, UARTBAUD);
}

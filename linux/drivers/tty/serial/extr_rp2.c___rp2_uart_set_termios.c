
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rp2_uart_port {scalar_t__ ucode; scalar_t__ base; } ;


 unsigned long CMSPAR ;
 unsigned long CRTSCTS ;
 unsigned long CS5 ;
 unsigned long CS6 ;
 unsigned long CS7 ;
 unsigned long CS8 ;
 unsigned long CSIZE ;
 unsigned long CSTOPB ;
 unsigned long IXOFF ;
 unsigned long IXON ;
 unsigned long PARENB ;
 unsigned long PARODD ;
 scalar_t__ RP2_BAUD ;
 scalar_t__ RP2_RX_SWFLOW ;
 int RP2_RX_SWFLOW_dis ;
 int RP2_RX_SWFLOW_ena ;
 int RP2_TXRX_CTL ;
 int RP2_TXRX_CTL_CMSPAR_m ;
 int RP2_TXRX_CTL_CTSFLOW_m ;
 int RP2_TXRX_CTL_DSRFLOW_m ;
 int RP2_TXRX_CTL_DTRFLOW_m ;
 int RP2_TXRX_CTL_PARENB_m ;
 int RP2_TXRX_CTL_RTSFLOW_m ;
 int RP2_TXRX_CTL_nPARODD_m ;
 scalar_t__ RP2_TX_SWFLOW ;
 int RP2_TX_SWFLOW_dis ;
 int RP2_TX_SWFLOW_ena ;
 int RP2_UART_CTL ;
 int RP2_UART_CTL_DATABITS_5 ;
 int RP2_UART_CTL_DATABITS_6 ;
 int RP2_UART_CTL_DATABITS_7 ;
 int RP2_UART_CTL_DATABITS_8 ;
 int RP2_UART_CTL_DATABITS_m ;
 int RP2_UART_CTL_STOPBITS_m ;
 int rp2_rmw (struct rp2_uart_port*,int ,int,int) ;
 int writeb (int ,scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void __rp2_uart_set_termios(struct rp2_uart_port *up,
       unsigned long cfl,
       unsigned long ifl,
       unsigned int baud_div)
{

 writew(baud_div - 1, up->base + RP2_BAUD);


 rp2_rmw(up, RP2_UART_CTL,
  RP2_UART_CTL_STOPBITS_m | RP2_UART_CTL_DATABITS_m,
  ((cfl & CSTOPB) ? RP2_UART_CTL_STOPBITS_m : 0) |
  (((cfl & CSIZE) == CS8) ? RP2_UART_CTL_DATABITS_8 : 0) |
  (((cfl & CSIZE) == CS7) ? RP2_UART_CTL_DATABITS_7 : 0) |
  (((cfl & CSIZE) == CS6) ? RP2_UART_CTL_DATABITS_6 : 0) |
  (((cfl & CSIZE) == CS5) ? RP2_UART_CTL_DATABITS_5 : 0));


 rp2_rmw(up, RP2_TXRX_CTL,
  RP2_TXRX_CTL_PARENB_m | RP2_TXRX_CTL_nPARODD_m |
  RP2_TXRX_CTL_CMSPAR_m | RP2_TXRX_CTL_DTRFLOW_m |
  RP2_TXRX_CTL_DSRFLOW_m | RP2_TXRX_CTL_RTSFLOW_m |
  RP2_TXRX_CTL_CTSFLOW_m,
  ((cfl & PARENB) ? RP2_TXRX_CTL_PARENB_m : 0) |
  ((cfl & PARODD) ? 0 : RP2_TXRX_CTL_nPARODD_m) |
  ((cfl & CMSPAR) ? RP2_TXRX_CTL_CMSPAR_m : 0) |
  ((cfl & CRTSCTS) ? (RP2_TXRX_CTL_RTSFLOW_m |
        RP2_TXRX_CTL_CTSFLOW_m) : 0));


 writeb((ifl & IXON) ? RP2_TX_SWFLOW_ena : RP2_TX_SWFLOW_dis,
        up->ucode + RP2_TX_SWFLOW);
 writeb((ifl & IXOFF) ? RP2_RX_SWFLOW_ena : RP2_RX_SWFLOW_dis,
        up->ucode + RP2_RX_SWFLOW);
}

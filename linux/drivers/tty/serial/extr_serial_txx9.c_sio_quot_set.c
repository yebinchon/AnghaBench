
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_txx9_port {int dummy; } ;


 int TXX9_SIBGR ;
 int TXX9_SIBGR_BCLK_T0 ;
 int TXX9_SIBGR_BCLK_T2 ;
 int TXX9_SIBGR_BCLK_T4 ;
 int TXX9_SIBGR_BCLK_T6 ;
 int sio_out (struct uart_txx9_port*,int ,int) ;

__attribute__((used)) static inline void
sio_quot_set(struct uart_txx9_port *up, int quot)
{
 quot >>= 1;
 if (quot < 256)
  sio_out(up, TXX9_SIBGR, quot | TXX9_SIBGR_BCLK_T0);
 else if (quot < (256 << 2))
  sio_out(up, TXX9_SIBGR, (quot >> 2) | TXX9_SIBGR_BCLK_T2);
 else if (quot < (256 << 4))
  sio_out(up, TXX9_SIBGR, (quot >> 4) | TXX9_SIBGR_BCLK_T4);
 else if (quot < (256 << 6))
  sio_out(up, TXX9_SIBGR, (quot >> 6) | TXX9_SIBGR_BCLK_T6);
 else
  sio_out(up, TXX9_SIBGR, 0xff | TXX9_SIBGR_BCLK_T6);
}

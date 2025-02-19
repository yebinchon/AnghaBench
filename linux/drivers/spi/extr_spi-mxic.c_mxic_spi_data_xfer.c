
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxic_spi {scalar_t__ regs; } ;


 int INT_RX_NOT_EMPTY ;
 scalar_t__ INT_STS ;
 int INT_TX_EMPTY ;
 scalar_t__ RXD ;
 scalar_t__ TXD (unsigned int) ;
 int USEC_PER_SEC ;
 int WARN_ON (int) ;
 int memcpy (void*,int*,unsigned int) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int ,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mxic_spi_data_xfer(struct mxic_spi *mxic, const void *txbuf,
         void *rxbuf, unsigned int len)
{
 unsigned int pos = 0;

 while (pos < len) {
  unsigned int nbytes = len - pos;
  u32 data = 0xffffffff;
  u32 sts;
  int ret;

  if (nbytes > 4)
   nbytes = 4;

  if (txbuf)
   memcpy(&data, txbuf + pos, nbytes);

  ret = readl_poll_timeout(mxic->regs + INT_STS, sts,
      sts & INT_TX_EMPTY, 0, USEC_PER_SEC);
  if (ret)
   return ret;

  writel(data, mxic->regs + TXD(nbytes % 4));

  if (rxbuf) {
   ret = readl_poll_timeout(mxic->regs + INT_STS, sts,
       sts & INT_TX_EMPTY, 0,
       USEC_PER_SEC);
   if (ret)
    return ret;

   ret = readl_poll_timeout(mxic->regs + INT_STS, sts,
       sts & INT_RX_NOT_EMPTY, 0,
       USEC_PER_SEC);
   if (ret)
    return ret;

   data = readl(mxic->regs + RXD);
   data >>= (8 * (4 - nbytes));
   memcpy(rxbuf + pos, &data, nbytes);
   WARN_ON(readl(mxic->regs + INT_STS) & INT_RX_NOT_EMPTY);
  } else {
   readl(mxic->regs + RXD);
  }
  WARN_ON(readl(mxic->regs + INT_STS) & INT_RX_NOT_EMPTY);

  pos += nbytes;
 }

 return 0;
}

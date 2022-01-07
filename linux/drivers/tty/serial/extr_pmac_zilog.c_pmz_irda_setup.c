
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct uart_pmac_port {int * curregs; } ;


 int ALL_SNT ;
 int CS8 ;
 int DTR ;
 int R0 ;
 int R1 ;
 size_t R5 ;
 int Rx_CH_AV ;
 int Tx_BUF_EMP ;
 int mdelay (int) ;
 int pmz_convert_to_zs (struct uart_pmac_port*,int ,int ,int) ;
 int pmz_error (char*,...) ;
 int pmz_info (char*,unsigned long,...) ;
 int pmz_load_zsregs (struct uart_pmac_port*,int *) ;
 int read_zsdata (struct uart_pmac_port*) ;
 int read_zsreg (struct uart_pmac_port*,int ) ;
 int udelay (int) ;
 int write_zsdata (struct uart_pmac_port*,int) ;
 int write_zsreg (struct uart_pmac_port*,size_t,int ) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_irda_setup(struct uart_pmac_port *uap, unsigned long *baud)
{
 u8 cmdbyte;
 int t, version;

 switch (*baud) {

 case 2400:
  cmdbyte = 0x53;
  break;
 case 4800:
  cmdbyte = 0x52;
  break;
 case 9600:
  cmdbyte = 0x51;
  break;
 case 19200:
  cmdbyte = 0x50;
  break;
 case 38400:
  cmdbyte = 0x4f;
  break;
 case 57600:
  cmdbyte = 0x4e;
  break;
 case 115200:
  cmdbyte = 0x4d;
  break;



 case 1152000:
  cmdbyte = 0;
  break;
 case 4000000:
  cmdbyte = 0;
  break;
 default:
  cmdbyte = 0x51;
  *baud = 9600;
  break;
 }


 t = 10000;
 while ((read_zsreg(uap, R0) & Tx_BUF_EMP) == 0
        || (read_zsreg(uap, R1) & ALL_SNT) == 0) {
  if (--t <= 0) {
   pmz_error("transmitter didn't drain\n");
   return;
  }
  udelay(10);
 }


 t = 100;
 (void)read_zsdata(uap);
 (void)read_zsdata(uap);
 (void)read_zsdata(uap);
 mdelay(10);
 while (read_zsreg(uap, R0) & Rx_CH_AV) {
  read_zsdata(uap);
  mdelay(10);
  if (--t <= 0) {
   pmz_error("receiver didn't drain\n");
   return;
  }
 }


 uap->curregs[R5] |= DTR;
 write_zsreg(uap, R5, uap->curregs[R5]);
 zssync(uap);
 mdelay(1);


 pmz_convert_to_zs(uap, CS8, 0, 19200);
 pmz_load_zsregs(uap, uap->curregs);
 mdelay(1);


 write_zsdata(uap, 1);
 t = 5000;
 while ((read_zsreg(uap, R0) & Rx_CH_AV) == 0) {
  if (--t <= 0) {
   pmz_error("irda_setup timed out on get_version byte\n");
   goto out;
  }
  udelay(10);
 }
 version = read_zsdata(uap);

 if (version < 4) {
  pmz_info("IrDA: dongle version %d not supported\n", version);
  goto out;
 }


 write_zsdata(uap, cmdbyte);
 t = 5000;
 while ((read_zsreg(uap, R0) & Rx_CH_AV) == 0) {
  if (--t <= 0) {
   pmz_error("irda_setup timed out on speed mode byte\n");
   goto out;
  }
  udelay(10);
 }
 t = read_zsdata(uap);
 if (t != cmdbyte)
  pmz_error("irda_setup speed mode byte = %x (%x)\n", t, cmdbyte);

 pmz_info("IrDA setup for %ld bps, dongle version: %d\n",
   *baud, version);

 (void)read_zsdata(uap);
 (void)read_zsdata(uap);
 (void)read_zsdata(uap);

 out:

 uap->curregs[R5] &= ~DTR;
 write_zsreg(uap, R5, uap->curregs[R5]);
 zssync(uap);

 (void)read_zsdata(uap);
 (void)read_zsdata(uap);
 (void)read_zsdata(uap);
}

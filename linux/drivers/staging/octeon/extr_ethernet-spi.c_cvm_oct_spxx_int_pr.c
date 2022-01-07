
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prtnxa; scalar_t__ abnorm; scalar_t__ spiovr; scalar_t__ clserr; scalar_t__ drwnng; scalar_t__ rsverr; scalar_t__ tpaovr; scalar_t__ diperr; scalar_t__ syncerr; scalar_t__ calerr; scalar_t__ spf; } ;
union cvmx_spxx_int_reg {TYPE_1__ s; } ;


 int pr_err (char*,int) ;

__attribute__((used)) static void cvm_oct_spxx_int_pr(union cvmx_spxx_int_reg spx_int_reg, int index)
{
 if (spx_int_reg.s.spf)
  pr_err("SPI%d: SRX Spi4 interface down\n", index);
 if (spx_int_reg.s.calerr)
  pr_err("SPI%d: SRX Spi4 Calendar table parity error\n", index);
 if (spx_int_reg.s.syncerr)
  pr_err("SPI%d: SRX Consecutive Spi4 DIP4 errors have exceeded SPX_ERR_CTL[ERRCNT]\n",
         index);
 if (spx_int_reg.s.diperr)
  pr_err("SPI%d: SRX Spi4 DIP4 error\n", index);
 if (spx_int_reg.s.tpaovr)
  pr_err("SPI%d: SRX Selected port has hit TPA overflow\n",
         index);
 if (spx_int_reg.s.rsverr)
  pr_err("SPI%d: SRX Spi4 reserved control word detected\n",
         index);
 if (spx_int_reg.s.drwnng)
  pr_err("SPI%d: SRX Spi4 receive FIFO drowning/overflow\n",
         index);
 if (spx_int_reg.s.clserr)
  pr_err("SPI%d: SRX Spi4 packet closed on non-16B alignment without EOP\n",
         index);
 if (spx_int_reg.s.spiovr)
  pr_err("SPI%d: SRX Spi4 async FIFO overflow\n", index);
 if (spx_int_reg.s.abnorm)
  pr_err("SPI%d: SRX Abnormal packet termination (ERR bit)\n",
         index);
 if (spx_int_reg.s.prtnxa)
  pr_err("SPI%d: SRX Port out of range\n", index);
}

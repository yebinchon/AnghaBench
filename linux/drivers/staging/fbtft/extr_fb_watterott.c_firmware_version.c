
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
struct TYPE_2__ {int (* read ) (struct fbtft_par*,char*,int) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;


 int CMD_VERSION ;
 int stub1 (struct fbtft_par*,char*,int) ;
 int write_reg (struct fbtft_par*,int ) ;

__attribute__((used)) static unsigned int firmware_version(struct fbtft_par *par)
{
 u8 rxbuf[4] = {0, };

 write_reg(par, CMD_VERSION);
 par->fbtftops.read(par, rxbuf, 4);
 if (rxbuf[1] != '.')
  return 0;

 return (rxbuf[0] - '0') << 8 | (rxbuf[2] - '0') << 4 | (rxbuf[3] - '0');
}

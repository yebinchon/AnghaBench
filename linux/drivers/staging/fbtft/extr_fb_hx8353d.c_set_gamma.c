
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fbtft_par {int dummy; } ;


 int write_reg (struct fbtft_par*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int set_gamma(struct fbtft_par *par, u32 *curves)
{
 write_reg(par, 0xE0,
    curves[0], curves[1], curves[2], curves[3],
    curves[4], curves[5], curves[6], curves[7],
    curves[8], curves[9], curves[10], curves[11],
    curves[12], curves[13], curves[14], curves[15],
    curves[16], curves[17], curves[18]);

 return 0;
}

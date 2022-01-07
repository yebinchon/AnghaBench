
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_curves; } ;
struct fbtft_par {TYPE_1__ gamma; } ;


 int CURVE (int,int) ;
 int write_reg (struct fbtft_par*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int set_gamma(struct fbtft_par *par, u32 *curves)
{
 int i;

 for (i = 0; i < par->gamma.num_curves; i++)
  write_reg(par, 0xE0 + i,
     CURVE(i, 0), CURVE(i, 1), CURVE(i, 2),
     CURVE(i, 3), CURVE(i, 4), CURVE(i, 5),
     CURVE(i, 6), CURVE(i, 7), CURVE(i, 8),
     CURVE(i, 9), CURVE(i, 10), CURVE(i, 11),
     CURVE(i, 12), CURVE(i, 13), CURVE(i, 14));

 return 0;
}

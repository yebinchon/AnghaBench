
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct imstt_regvals {int dummy; } ;
struct imstt_par {scalar_t__ ramdac; } ;


 scalar_t__ IBM ;
 struct imstt_regvals* compute_imstt_regvals_ibm (struct imstt_par*,int ,int ) ;
 struct imstt_regvals* compute_imstt_regvals_tvp (struct imstt_par*,int ,int ) ;

__attribute__((used)) static struct imstt_regvals *
compute_imstt_regvals (struct imstt_par *par, u_int xres, u_int yres)
{
 if (par->ramdac == IBM)
  return compute_imstt_regvals_ibm(par, xres, yres);
 else
  return compute_imstt_regvals_tvp(par, xres, yres);
}

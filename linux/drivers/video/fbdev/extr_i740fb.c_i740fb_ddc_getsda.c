
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i740fb_par {int dummy; } ;


 int DDC_SDA ;
 int REG_DDC_DRIVE ;
 int REG_DDC_STATE ;
 int XRX ;
 int i740inreg (struct i740fb_par*,int ,int ) ;
 int i740outreg_mask (struct i740fb_par*,int ,int ,int ,int) ;

__attribute__((used)) static int i740fb_ddc_getsda(void *data)
{
 struct i740fb_par *par = data;

 i740outreg_mask(par, XRX, REG_DDC_DRIVE, 0, DDC_SDA);

 return !!(i740inreg(par, XRX, REG_DDC_STATE) & DDC_SDA);
}

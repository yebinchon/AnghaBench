
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i740fb_par {int dummy; } ;


 int DDC_SDA ;
 int REG_DDC_DRIVE ;
 int REG_DDC_STATE ;
 int XRX ;
 int i740outreg_mask (struct i740fb_par*,int ,int ,int ,int ) ;

__attribute__((used)) static void i740fb_ddc_setsda(void *data, int val)
{
 struct i740fb_par *par = data;

 i740outreg_mask(par, XRX, REG_DDC_DRIVE, DDC_SDA, DDC_SDA);
 i740outreg_mask(par, XRX, REG_DDC_STATE, val ? DDC_SDA : 0, DDC_SDA);
}

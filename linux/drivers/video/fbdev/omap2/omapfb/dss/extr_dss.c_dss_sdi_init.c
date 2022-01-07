
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG_ON (int) ;
 int DSS_PLL_CONTROL ;
 int DSS_SDI_CONTROL ;
 int FLD_MOD (int ,int,int,int) ;
 int dss_read_reg (int ) ;
 int dss_write_reg (int ,int ) ;

void dss_sdi_init(int datapairs)
{
 u32 l;

 BUG_ON(datapairs > 3 || datapairs < 1);

 l = dss_read_reg(DSS_SDI_CONTROL);
 l = FLD_MOD(l, 0xf, 19, 15);
 l = FLD_MOD(l, datapairs-1, 3, 2);
 l = FLD_MOD(l, 2, 1, 0);
 dss_write_reg(DSS_SDI_CONTROL, l);

 l = dss_read_reg(DSS_PLL_CONTROL);
 l = FLD_MOD(l, 0x7, 25, 22);
 l = FLD_MOD(l, 0xb, 16, 11);
 l = FLD_MOD(l, 0xb4, 10, 1);
 dss_write_reg(DSS_PLL_CONTROL, l);
}

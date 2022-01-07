
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int screen_base; } ;


 int LMCFG ;
 int LMCFG_LMA_TS ;
 int LMCFG_LMC_DS ;
 int LMCFG_LMC_TS ;
 int LMCFG_LMD_TS ;
 int LMPWR ;
 int LMPWR_MC_PWR_ACT ;
 int LMREFRESH ;
 int LMTIM ;
 int LMTYPE ;
 int LMTYPE_BKSZ_2 ;
 int LMTYPE_CASLAT_3 ;
 int LMTYPE_COLSZ_8 ;
 int LMTYPE_ROWSZ_11 ;
 int Lmtim_Tdpl (int) ;
 int Lmtim_Tras (int) ;
 int Lmtim_Trc (int) ;
 int Lmtim_Trcd (int) ;
 int Lmtim_Trp (int) ;
 unsigned long readl (int ) ;
 int write_reg_dly (int,int ) ;

__attribute__((used)) static void setup_memc(struct fb_info *fbi)
{
 unsigned long tmp;
 int i;



 write_reg_dly((LMCFG_LMC_DS | LMCFG_LMC_TS | LMCFG_LMD_TS |
  LMCFG_LMA_TS),
        LMCFG);

 write_reg_dly(LMPWR_MC_PWR_ACT, LMPWR);


 write_reg_dly((Lmtim_Tras(7) | Lmtim_Trp(3) | Lmtim_Trcd(3) |
  Lmtim_Trc(9) | Lmtim_Tdpl(2)),
        LMTIM);

 write_reg_dly(0xc2b, LMREFRESH);

 write_reg_dly((LMTYPE_CASLAT_3 | LMTYPE_BKSZ_2 | LMTYPE_ROWSZ_11 |
  LMTYPE_COLSZ_8),
        LMTYPE);

 write_reg_dly(LMPWR_MC_PWR_ACT, LMPWR);

 for ( i = 0; i < 16; i++ ) {
  tmp = readl(fbi->screen_base);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_pm_s3_context {int sc_boot_vec; int * cp0_regs; } ;


 size_t BOOT_VEC ;
 size_t COMPARE ;
 size_t CONFIG ;
 size_t CONTEXT ;
 size_t EBASE ;
 size_t EDSP ;
 size_t HWRENA ;
 size_t MODE ;
 size_t PGMK ;
 size_t STATUS ;
 size_t USER_LOCAL ;
 int bmips_read_zscm_reg (int) ;
 int read_c0_brcm_bootvec () ;
 int read_c0_brcm_config () ;
 int read_c0_brcm_edsp () ;
 int read_c0_brcm_mode () ;
 int read_c0_cache () ;
 int read_c0_compare () ;
 int read_c0_context () ;
 int read_c0_ebase () ;
 int read_c0_pagemask () ;
 int read_c0_status () ;
 int read_c0_userlocal () ;

__attribute__((used)) static void brcm_pm_save_cp0_context(struct brcm_pm_s3_context *ctx)
{

 ctx->cp0_regs[CONTEXT] = read_c0_context();
 ctx->cp0_regs[USER_LOCAL] = read_c0_userlocal();
 ctx->cp0_regs[PGMK] = read_c0_pagemask();
 ctx->cp0_regs[HWRENA] = read_c0_cache();
 ctx->cp0_regs[COMPARE] = read_c0_compare();
 ctx->cp0_regs[STATUS] = read_c0_status();


 ctx->cp0_regs[CONFIG] = read_c0_brcm_config();
 ctx->cp0_regs[MODE] = read_c0_brcm_mode();
 ctx->cp0_regs[EDSP] = read_c0_brcm_edsp();
 ctx->cp0_regs[BOOT_VEC] = read_c0_brcm_bootvec();
 ctx->cp0_regs[EBASE] = read_c0_ebase();

 ctx->sc_boot_vec = bmips_read_zscm_reg(0xa0);
}

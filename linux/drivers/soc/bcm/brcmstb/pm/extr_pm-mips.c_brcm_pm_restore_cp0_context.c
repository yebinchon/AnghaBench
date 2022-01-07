
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_pm_s3_context {int * cp0_regs; int sc_boot_vec; } ;


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
 int bmips_write_zscm_reg (int,int ) ;
 int write_c0_brcm_bootvec (int ) ;
 int write_c0_brcm_config (int ) ;
 int write_c0_brcm_edsp (int ) ;
 int write_c0_brcm_mode (int ) ;
 int write_c0_cache (int ) ;
 int write_c0_compare (int ) ;
 int write_c0_context (int ) ;
 int write_c0_ebase (int ) ;
 int write_c0_pagemask (int ) ;
 int write_c0_status (int ) ;
 int write_c0_userlocal (int ) ;

__attribute__((used)) static void brcm_pm_restore_cp0_context(struct brcm_pm_s3_context *ctx)
{

 bmips_write_zscm_reg(0xa0, ctx->sc_boot_vec);


 write_c0_context(ctx->cp0_regs[CONTEXT]);
 write_c0_userlocal(ctx->cp0_regs[USER_LOCAL]);
 write_c0_pagemask(ctx->cp0_regs[PGMK]);
 write_c0_cache(ctx->cp0_regs[HWRENA]);
 write_c0_compare(ctx->cp0_regs[COMPARE]);
 write_c0_status(ctx->cp0_regs[STATUS]);


 write_c0_brcm_config(ctx->cp0_regs[CONFIG]);
 write_c0_brcm_mode(ctx->cp0_regs[MODE]);
 write_c0_brcm_edsp(ctx->cp0_regs[EDSP]);
 write_c0_brcm_bootvec(ctx->cp0_regs[BOOT_VEC]);
 write_c0_ebase(ctx->cp0_regs[EBASE]);
}

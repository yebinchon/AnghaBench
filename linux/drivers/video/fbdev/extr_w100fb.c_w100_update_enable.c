
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int db_buf_cntl; int update_db_buf; int en_db_buf; } ;
union disp_db_buf_cntl_wr_u {scalar_t__ val; TYPE_1__ f; } ;
typedef int u32 ;


 scalar_t__ mmDISP_DB_BUF_CNTL ;
 scalar_t__ remapped_regs ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void w100_update_enable(void)
{
 union disp_db_buf_cntl_wr_u disp_db_buf_wr_cntl;


 disp_db_buf_wr_cntl.f.db_buf_cntl = 0x1e;
 disp_db_buf_wr_cntl.f.update_db_buf = 1;
 disp_db_buf_wr_cntl.f.en_db_buf = 1;
 writel((u32) (disp_db_buf_wr_cntl.val), remapped_regs + mmDISP_DB_BUF_CNTL);
}

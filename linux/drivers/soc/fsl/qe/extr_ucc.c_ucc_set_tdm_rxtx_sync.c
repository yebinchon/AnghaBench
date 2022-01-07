
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qe_mux {int cmxsi1syr; } ;
typedef enum qe_clock { ____Placeholder_qe_clock } qe_clock ;
typedef enum comm_dir { ____Placeholder_comm_dir } comm_dir ;
struct TYPE_2__ {struct qe_mux qmx; } ;


 int COMM_DIR_RX ;
 int COMM_DIR_TX ;
 int EINVAL ;
 scalar_t__ QE_CMXUCR_TX_CLK_SRC_MASK ;
 scalar_t__ UCC_TDM_NUM ;
 int qe_clrsetbits32 (int *,scalar_t__,int) ;
 TYPE_1__* qe_immr ;
 scalar_t__ ucc_get_tdm_sync_shift (int,scalar_t__) ;
 int ucc_get_tdm_sync_source (scalar_t__,int,int) ;

int ucc_set_tdm_rxtx_sync(u32 tdm_num, enum qe_clock clock,
     enum comm_dir mode)
{
 int source;
 u32 shift;
 struct qe_mux *qe_mux_reg;

 qe_mux_reg = &qe_immr->qmx;

 if (tdm_num >= UCC_TDM_NUM)
  return -EINVAL;


 if (mode != COMM_DIR_RX && mode != COMM_DIR_TX)
  return -EINVAL;

 source = ucc_get_tdm_sync_source(tdm_num, clock, mode);
 if (source < 0)
  return -EINVAL;

 shift = ucc_get_tdm_sync_shift(mode, tdm_num);

 qe_clrsetbits32(&qe_mux_reg->cmxsi1syr,
   QE_CMXUCR_TX_CLK_SRC_MASK << shift,
   source << shift);

 return 0;
}

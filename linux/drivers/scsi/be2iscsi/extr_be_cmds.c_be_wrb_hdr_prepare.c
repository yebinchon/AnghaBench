
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct be_mcc_wrb {int emb_sgecnt_special; int payload_length; } ;


 int MCC_WRB_EMBEDDED_MASK ;
 int MCC_WRB_SGE_CNT_MASK ;
 int MCC_WRB_SGE_CNT_SHIFT ;
 int be_dws_cpu_to_le (struct be_mcc_wrb*,int) ;

void be_wrb_hdr_prepare(struct be_mcc_wrb *wrb, u32 payload_len,
   bool embedded, u8 sge_cnt)
{
 if (embedded)
  wrb->emb_sgecnt_special |= MCC_WRB_EMBEDDED_MASK;
 else
  wrb->emb_sgecnt_special |= (sge_cnt & MCC_WRB_SGE_CNT_MASK) <<
        MCC_WRB_SGE_CNT_SHIFT;
 wrb->payload_length = payload_len;
 be_dws_cpu_to_le(wrb, 8);
}

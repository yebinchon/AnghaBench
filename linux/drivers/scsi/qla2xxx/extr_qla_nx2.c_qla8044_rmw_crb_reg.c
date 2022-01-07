
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int* array; } ;
struct scsi_qla_host {TYPE_1__ reset_tmplt; } ;
struct qla8044_rmw {int index_a; int test_mask; int shl; int shr; int or_value; int xor_value; } ;


 int qla8044_rd_reg_indirect (struct scsi_qla_host*,int,int*) ;
 int qla8044_wr_reg_indirect (struct scsi_qla_host*,int,int) ;

__attribute__((used)) static void
qla8044_rmw_crb_reg(struct scsi_qla_host *vha,
 uint32_t raddr, uint32_t waddr, struct qla8044_rmw *p_rmw_hdr)
{
 uint32_t value;

 if (p_rmw_hdr->index_a)
  value = vha->reset_tmplt.array[p_rmw_hdr->index_a];
 else
  qla8044_rd_reg_indirect(vha, raddr, &value);
 value &= p_rmw_hdr->test_mask;
 value <<= p_rmw_hdr->shl;
 value >>= p_rmw_hdr->shr;
 value |= p_rmw_hdr->or_value;
 value ^= p_rmw_hdr->xor_value;
 qla8044_wr_reg_indirect(vha, waddr, value);
 return;
}

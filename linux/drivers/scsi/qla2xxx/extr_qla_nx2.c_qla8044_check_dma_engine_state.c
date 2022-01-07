
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {struct qla8044_minidump_template_hdr* md_tmplt_hdr; } ;
struct qla8044_minidump_template_hdr {int* saved_state_array; } ;


 int BIT_31 ;
 scalar_t__ ISP8044_PEX_DMA_BASE_ADDRESS ;
 scalar_t__ ISP8044_PEX_DMA_CMD_STS_AND_CNTRL ;
 size_t ISP8044_PEX_DMA_ENGINE_INDEX ;
 int ISP8044_PEX_DMA_NUM_OFFSET ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int qla8044_rd_reg_indirect (struct scsi_qla_host*,scalar_t__,int*) ;

__attribute__((used)) static int
qla8044_check_dma_engine_state(struct scsi_qla_host *vha)
{
 struct qla_hw_data *ha = vha->hw;
 int rval = QLA_SUCCESS;
 uint32_t dma_eng_num = 0, cmd_sts_and_cntrl = 0;
 uint64_t dma_base_addr = 0;
 struct qla8044_minidump_template_hdr *tmplt_hdr = ((void*)0);

 tmplt_hdr = ha->md_tmplt_hdr;
 dma_eng_num =
     tmplt_hdr->saved_state_array[ISP8044_PEX_DMA_ENGINE_INDEX];
 dma_base_addr = ISP8044_PEX_DMA_BASE_ADDRESS +
  (dma_eng_num * ISP8044_PEX_DMA_NUM_OFFSET);


 rval = qla8044_rd_reg_indirect(vha,
     (dma_base_addr + ISP8044_PEX_DMA_CMD_STS_AND_CNTRL),
     &cmd_sts_and_cntrl);
 if (rval)
  return QLA_FUNCTION_FAILED;


 if (cmd_sts_and_cntrl & BIT_31)
  return QLA_SUCCESS;

 return QLA_FUNCTION_FAILED;
}

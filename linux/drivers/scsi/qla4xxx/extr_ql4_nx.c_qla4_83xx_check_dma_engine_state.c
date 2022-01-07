
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct scsi_qla_host {TYPE_1__* isp_ops; scalar_t__ fw_dump_tmplt_hdr; } ;
struct qla4_8xxx_minidump_template_hdr {int* saved_state_array; } ;
struct TYPE_2__ {int (* rd_reg_indirect ) (struct scsi_qla_host*,scalar_t__,int*) ;} ;


 int BIT_31 ;
 scalar_t__ QLA83XX_PEX_DMA_BASE_ADDRESS ;
 scalar_t__ QLA83XX_PEX_DMA_CMD_STS_AND_CNTRL ;
 size_t QLA83XX_PEX_DMA_ENGINE_INDEX ;
 int QLA83XX_PEX_DMA_NUM_OFFSET ;
 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int stub1 (struct scsi_qla_host*,scalar_t__,int*) ;

__attribute__((used)) static int qla4_83xx_check_dma_engine_state(struct scsi_qla_host *ha)
{
 int rval = QLA_SUCCESS;
 uint32_t dma_eng_num = 0, cmd_sts_and_cntrl = 0;
 uint64_t dma_base_addr = 0;
 struct qla4_8xxx_minidump_template_hdr *tmplt_hdr = ((void*)0);

 tmplt_hdr = (struct qla4_8xxx_minidump_template_hdr *)
       ha->fw_dump_tmplt_hdr;
 dma_eng_num =
  tmplt_hdr->saved_state_array[QLA83XX_PEX_DMA_ENGINE_INDEX];
 dma_base_addr = QLA83XX_PEX_DMA_BASE_ADDRESS +
    (dma_eng_num * QLA83XX_PEX_DMA_NUM_OFFSET);


 rval = ha->isp_ops->rd_reg_indirect(ha,
   (dma_base_addr + QLA83XX_PEX_DMA_CMD_STS_AND_CNTRL),
   &cmd_sts_and_cntrl);

 if (rval)
  return QLA_ERROR;


 if (cmd_sts_and_cntrl & BIT_31)
  return QLA_SUCCESS;
 else
  return QLA_ERROR;
}

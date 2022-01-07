
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {void** cdb; int request_type; } ;
struct ipr_ioarcb {TYPE_1__ cmd_pkt; int res_handle; } ;
struct ipr_cmnd {struct ipr_ioarcb ioarcb; } ;
typedef int dma_addr_t ;


 int ENTER ;
 void* INQUIRY ;
 int IPR_INTERNAL_TIMEOUT ;
 int IPR_IOADL_FLAGS_READ_LAST ;
 int IPR_IOA_RES_HANDLE ;
 int IPR_RQTYPE_SCSICDB ;
 int LEAVE ;
 int cpu_to_be32 (int ) ;
 int ipr_do_req (struct ipr_cmnd*,int ,int ,int ) ;
 int ipr_init_ioadl (struct ipr_cmnd*,int ,void*,int ) ;
 int ipr_reset_ioa_job ;
 int ipr_timeout ;

__attribute__((used)) static void ipr_ioafp_inquiry(struct ipr_cmnd *ipr_cmd, u8 flags, u8 page,
         dma_addr_t dma_addr, u8 xfer_len)
{
 struct ipr_ioarcb *ioarcb = &ipr_cmd->ioarcb;

 ENTER;
 ioarcb->cmd_pkt.request_type = IPR_RQTYPE_SCSICDB;
 ioarcb->res_handle = cpu_to_be32(IPR_IOA_RES_HANDLE);

 ioarcb->cmd_pkt.cdb[0] = INQUIRY;
 ioarcb->cmd_pkt.cdb[1] = flags;
 ioarcb->cmd_pkt.cdb[2] = page;
 ioarcb->cmd_pkt.cdb[4] = xfer_len;

 ipr_init_ioadl(ipr_cmd, dma_addr, xfer_len, IPR_IOADL_FLAGS_READ_LAST);

 ipr_do_req(ipr_cmd, ipr_reset_ioa_job, ipr_timeout, IPR_INTERNAL_TIMEOUT);
 LEAVE;
}

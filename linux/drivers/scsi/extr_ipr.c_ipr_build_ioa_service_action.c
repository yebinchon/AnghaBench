
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int request_type; int * cdb; } ;
struct ipr_ioarcb {TYPE_1__ cmd_pkt; int res_handle; } ;
struct ipr_cmnd {struct ipr_ioarcb ioarcb; } ;
typedef int __be32 ;


 int IPR_IOA_SERVICE_ACTION ;
 int IPR_RQTYPE_IOACMD ;

__attribute__((used)) static void ipr_build_ioa_service_action(struct ipr_cmnd *ipr_cmd,
      __be32 res_handle, u8 sa_code)
{
 struct ipr_ioarcb *ioarcb = &ipr_cmd->ioarcb;

 ioarcb->res_handle = res_handle;
 ioarcb->cmd_pkt.cdb[0] = IPR_IOA_SERVICE_ACTION;
 ioarcb->cmd_pkt.cdb[1] = sa_code;
 ioarcb->cmd_pkt.request_type = IPR_RQTYPE_IOACMD;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u16 ;
struct fcnvme_lsdesc_rjt {int dummy; } ;
struct TYPE_2__ {void* vendor; void* reason_explanation; void* reason_code; int desc_len; int desc_tag; } ;
struct fcnvme_ls_rjt {TYPE_1__ rjt; } ;


 int FCNVME_LSDESC_RJT ;
 int FCNVME_LSDESC_RQST ;
 int cpu_to_be32 (int ) ;
 int fcnvme_lsdesc_len (int) ;
 int nvmet_fc_format_rsp_hdr (void*,int ,int ,void*) ;

__attribute__((used)) static int
nvmet_fc_format_rjt(void *buf, u16 buflen, u8 ls_cmd,
   u8 reason, u8 explanation, u8 vendor)
{
 struct fcnvme_ls_rjt *rjt = buf;

 nvmet_fc_format_rsp_hdr(buf, FCNVME_LSDESC_RQST,
   fcnvme_lsdesc_len(sizeof(struct fcnvme_ls_rjt)),
   ls_cmd);
 rjt->rjt.desc_tag = cpu_to_be32(FCNVME_LSDESC_RJT);
 rjt->rjt.desc_len = fcnvme_lsdesc_len(sizeof(struct fcnvme_lsdesc_rjt));
 rjt->rjt.reason_code = reason;
 rjt->rjt.reason_explanation = explanation;
 rjt->rjt.vendor = vendor;

 return sizeof(struct fcnvme_ls_rjt);
}

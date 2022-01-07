
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
struct fcnvme_lsdesc_rqst {int dummy; } ;
struct TYPE_6__ {void* ls_cmd; } ;
struct TYPE_5__ {TYPE_3__ w0; int desc_len; int desc_tag; } ;
struct TYPE_4__ {void* ls_cmd; } ;
struct fcnvme_ls_acc_hdr {TYPE_2__ rqst; int desc_list_len; TYPE_1__ w0; } ;
typedef int __be32 ;


 int FCNVME_LSDESC_RQST ;
 int cpu_to_be32 (int ) ;
 int fcnvme_lsdesc_len (int) ;

__attribute__((used)) static void
nvmet_fc_format_rsp_hdr(void *buf, u8 ls_cmd, __be32 desc_len, u8 rqst_ls_cmd)
{
 struct fcnvme_ls_acc_hdr *acc = buf;

 acc->w0.ls_cmd = ls_cmd;
 acc->desc_list_len = desc_len;
 acc->rqst.desc_tag = cpu_to_be32(FCNVME_LSDESC_RQST);
 acc->rqst.desc_len =
   fcnvme_lsdesc_len(sizeof(struct fcnvme_lsdesc_rqst));
 acc->rqst.w0.ls_cmd = rqst_ls_cmd;
}

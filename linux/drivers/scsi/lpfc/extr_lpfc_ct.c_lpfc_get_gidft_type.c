
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct lpfc_vport {int dummy; } ;
struct TYPE_3__ {scalar_t__ Fc4Type; } ;
struct TYPE_4__ {TYPE_1__ gid; } ;
struct lpfc_sli_ct_request {TYPE_2__ un; } ;
struct lpfc_iocbq {struct lpfc_dmabuf* context1; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;


 scalar_t__ SLI_CTPT_FCP ;
 scalar_t__ SLI_CTPT_NVME ;

int
lpfc_get_gidft_type(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb)
{
 struct lpfc_sli_ct_request *CtReq;
 struct lpfc_dmabuf *mp;
 uint32_t type;

 mp = cmdiocb->context1;
 if (mp == ((void*)0))
  return 0;
 CtReq = (struct lpfc_sli_ct_request *)mp->virt;
 type = (uint32_t)CtReq->un.gid.Fc4Type;
 if ((type != SLI_CTPT_FCP) && (type != SLI_CTPT_NVME))
  return 0;
 return type;
}

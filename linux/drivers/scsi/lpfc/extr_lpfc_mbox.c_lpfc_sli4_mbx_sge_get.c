
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct lpfc_mbx_sge {int length; int pa_hi; int pa_lo; } ;
struct lpfc_mbx_nembed_cmd {TYPE_4__* sge; } ;
struct TYPE_5__ {int nembed_cmd; } ;
struct TYPE_6__ {TYPE_1__ un; } ;
struct TYPE_7__ {TYPE_2__ mqe; } ;
struct lpfcMboxq {TYPE_3__ u; } ;
struct TYPE_8__ {int length; int pa_hi; int pa_lo; } ;



void
lpfc_sli4_mbx_sge_get(struct lpfcMboxq *mbox, uint32_t sgentry,
        struct lpfc_mbx_sge *sge)
{
 struct lpfc_mbx_nembed_cmd *nembed_sge;

 nembed_sge = (struct lpfc_mbx_nembed_cmd *)
    &mbox->u.mqe.un.nembed_cmd;
 sge->pa_lo = nembed_sge->sge[sgentry].pa_lo;
 sge->pa_hi = nembed_sge->sge[sgentry].pa_hi;
 sge->length = nembed_sge->sge[sgentry].length;
}

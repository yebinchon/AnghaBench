
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfa_iocfc_s {int cfg; TYPE_5__* cfgrsp; TYPE_3__* cfginfo; } ;
struct bfa_s {struct bfa_iocfc_s iocfc; } ;
struct TYPE_6__ {void* latency; void* delay; int coalesce; } ;
struct bfa_iocfc_attr_s {int config; TYPE_1__ intr_attr; } ;
struct TYPE_9__ {scalar_t__ latency; scalar_t__ delay; } ;
struct TYPE_10__ {TYPE_4__ intr_attr; } ;
struct TYPE_7__ {scalar_t__ latency; scalar_t__ delay; int coalesce; } ;
struct TYPE_8__ {TYPE_2__ intr_attr; } ;


 void* be16_to_cpu (scalar_t__) ;

void
bfa_iocfc_get_attr(struct bfa_s *bfa, struct bfa_iocfc_attr_s *attr)
{
 struct bfa_iocfc_s *iocfc = &bfa->iocfc;

 attr->intr_attr.coalesce = iocfc->cfginfo->intr_attr.coalesce;

 attr->intr_attr.delay = iocfc->cfginfo->intr_attr.delay ?
    be16_to_cpu(iocfc->cfginfo->intr_attr.delay) :
    be16_to_cpu(iocfc->cfgrsp->intr_attr.delay);

 attr->intr_attr.latency = iocfc->cfginfo->intr_attr.latency ?
   be16_to_cpu(iocfc->cfginfo->intr_attr.latency) :
   be16_to_cpu(iocfc->cfgrsp->intr_attr.latency);

 attr->config = iocfc->cfg;
}

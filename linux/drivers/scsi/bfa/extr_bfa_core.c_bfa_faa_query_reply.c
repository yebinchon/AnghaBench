
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int (* faa_cbfn ) (void*,int ) ;void* faa_cbarg; } ;
struct TYPE_7__ {int busy; TYPE_3__ faa_cb; TYPE_1__* faa_attr; } ;
struct bfa_iocfc_s {TYPE_2__ faa_args; } ;
struct TYPE_9__ {int addr_source; int faa_status; int faa; } ;
typedef TYPE_4__ bfi_faa_query_rsp_t ;
struct TYPE_6__ {int pwwn_source; int faa_state; int faa; } ;


 int BFA_FALSE ;
 int BFA_STATUS_OK ;
 int WARN_ON (int) ;
 int stub1 (void*,int ) ;

__attribute__((used)) static void
bfa_faa_query_reply(struct bfa_iocfc_s *iocfc,
  bfi_faa_query_rsp_t *rsp)
{
 void *cbarg = iocfc->faa_args.faa_cb.faa_cbarg;

 if (iocfc->faa_args.faa_attr) {
  iocfc->faa_args.faa_attr->faa = rsp->faa;
  iocfc->faa_args.faa_attr->faa_state = rsp->faa_status;
  iocfc->faa_args.faa_attr->pwwn_source = rsp->addr_source;
 }

 WARN_ON(!iocfc->faa_args.faa_cb.faa_cbfn);

 iocfc->faa_args.faa_cb.faa_cbfn(cbarg, BFA_STATUS_OK);
 iocfc->faa_args.busy = BFA_FALSE;
}

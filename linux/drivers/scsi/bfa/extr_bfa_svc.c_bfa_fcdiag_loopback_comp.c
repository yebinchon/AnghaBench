
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int badfrmnum; int badfrminf; int numrcvfrm; int numosffrm; int numtxmfrm; } ;
struct bfi_diag_lb_rsp_s {TYPE_1__ res; } ;
struct TYPE_4__ {scalar_t__ lock; int status; int cbarg; int (* cbfn ) (int ,int ) ;struct bfa_diag_loopback_result_s* result; } ;
struct bfa_fcdiag_s {TYPE_2__ lb; } ;
struct bfa_diag_loopback_result_s {int status; void* badfrmnum; void* badfrminf; void* numrcvfrm; void* numosffrm; void* numtxmfrm; } ;


 void* be32_to_cpu (int ) ;
 int bfa_fcdiag_set_busy_status (struct bfa_fcdiag_s*) ;
 int bfa_trc (struct bfa_fcdiag_s*,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
bfa_fcdiag_loopback_comp(struct bfa_fcdiag_s *fcdiag,
   struct bfi_diag_lb_rsp_s *rsp)
{
 struct bfa_diag_loopback_result_s *res = fcdiag->lb.result;

 res->numtxmfrm = be32_to_cpu(rsp->res.numtxmfrm);
 res->numosffrm = be32_to_cpu(rsp->res.numosffrm);
 res->numrcvfrm = be32_to_cpu(rsp->res.numrcvfrm);
 res->badfrminf = be32_to_cpu(rsp->res.badfrminf);
 res->badfrmnum = be32_to_cpu(rsp->res.badfrmnum);
 res->status = rsp->res.status;
 fcdiag->lb.status = rsp->res.status;
 bfa_trc(fcdiag, fcdiag->lb.status);
 fcdiag->lb.cbfn(fcdiag->lb.cbarg, fcdiag->lb.status);
 fcdiag->lb.lock = 0;
 bfa_fcdiag_set_busy_status(fcdiag);
}

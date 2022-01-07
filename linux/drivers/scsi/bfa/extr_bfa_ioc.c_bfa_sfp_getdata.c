
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sfp_mem_s {int dummy; } ;
struct bfi_sfp_req_s {int memtype; int alen; } ;
struct TYPE_2__ {scalar_t__ msg; } ;
struct bfa_sfp_s {int lock; int memtype; int dbuf_pa; int state; TYPE_1__ mbcmd; } ;
typedef enum bfi_sfp_mem_e { ____Placeholder_bfi_sfp_mem_e } bfi_sfp_mem_e ;


 int WARN_ON (int) ;
 int bfa_alen_set (int *,int,int ) ;
 int bfa_sfp_getdata_send (struct bfa_sfp_s*) ;
 int bfa_trc (struct bfa_sfp_s*,int ) ;

__attribute__((used)) static void
bfa_sfp_getdata(struct bfa_sfp_s *sfp, enum bfi_sfp_mem_e memtype)
{
 struct bfi_sfp_req_s *req = (struct bfi_sfp_req_s *)sfp->mbcmd.msg;

 WARN_ON(sfp->lock != 0);
 bfa_trc(sfp, sfp->state);

 sfp->lock = 1;
 sfp->memtype = memtype;
 req->memtype = memtype;


 bfa_alen_set(&req->alen, sizeof(struct sfp_mem_s), sfp->dbuf_pa);

 bfa_sfp_getdata_send(sfp);
}

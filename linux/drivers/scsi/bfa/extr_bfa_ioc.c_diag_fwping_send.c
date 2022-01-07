
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bfi_diag_fwping_req_s {int data; int mh; int count; int alen; } ;
struct TYPE_4__ {scalar_t__ msg; } ;
struct TYPE_3__ {int data; TYPE_2__ mbcmd; int count; int dbuf_pa; scalar_t__ dbuf_kva; } ;
struct bfa_diag_s {TYPE_1__ fwping; int ioc; } ;


 int BFI_DIAG_DMA_BUF_SZ ;
 int BFI_DIAG_H2I_FWPING ;
 int BFI_MC_DIAG ;
 int bfa_alen_set (int *,int,int ) ;
 int bfa_ioc_mbox_queue (int ,TYPE_2__*) ;
 int bfa_ioc_portid (int ) ;
 int bfa_trc (struct bfa_diag_s*,int ) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static void
diag_fwping_send(struct bfa_diag_s *diag)
{
 struct bfi_diag_fwping_req_s *fwping_req;
 u32 i;

 bfa_trc(diag, diag->fwping.dbuf_pa);


 for (i = 0; i < (BFI_DIAG_DMA_BUF_SZ >> 2); i++)
  *((u32 *)diag->fwping.dbuf_kva + i) = diag->fwping.data;


 fwping_req = (struct bfi_diag_fwping_req_s *)diag->fwping.mbcmd.msg;


 bfa_alen_set(&fwping_req->alen, BFI_DIAG_DMA_BUF_SZ,
   diag->fwping.dbuf_pa);

 fwping_req->count = cpu_to_be32(diag->fwping.count);

 fwping_req->data = diag->fwping.data;


 bfi_h2i_set(fwping_req->mh, BFI_MC_DIAG, BFI_DIAG_H2I_FWPING,
  bfa_ioc_portid(diag->ioc));


 bfa_ioc_mbox_queue(diag->ioc, &diag->fwping.mbcmd);
}

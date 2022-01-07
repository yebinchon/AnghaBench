
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_ctrl_req_s {int clscode; int mh; } ;
struct bfa_mbox_cmd_s {scalar_t__ msg; } ;
struct bfa_ioc_s {int clscode; } ;


 int BFI_IOC_H2I_DBG_SYNC ;
 int BFI_MC_IOC ;
 int bfa_ioc_mbox_queue (struct bfa_ioc_s*,struct bfa_mbox_cmd_s*) ;
 int bfa_ioc_portid (struct bfa_ioc_s*) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int ) ;

__attribute__((used)) static void
bfa_ioc_send_fwsync(struct bfa_ioc_s *ioc)
{
 struct bfa_mbox_cmd_s cmd;
 struct bfi_ioc_ctrl_req_s *req = (struct bfi_ioc_ctrl_req_s *) cmd.msg;

 bfi_h2i_set(req->mh, BFI_MC_IOC, BFI_IOC_H2I_DBG_SYNC,
      bfa_ioc_portid(ioc));
 req->clscode = cpu_to_be16(ioc->clscode);
 bfa_ioc_mbox_queue(ioc, &cmd);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_ctrl_req_s {int tv_sec; int clscode; int mh; } ;
struct bfa_ioc_s {int clscode; } ;


 int BFI_IOC_H2I_ENABLE_REQ ;
 int BFI_MC_IOC ;
 int be32_to_cpu (int ) ;
 int bfa_ioc_mbox_send (struct bfa_ioc_s*,struct bfi_ioc_ctrl_req_s*,int) ;
 int bfa_ioc_portid (struct bfa_ioc_s*) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int ) ;
 int ktime_get_real_seconds () ;

__attribute__((used)) static void
bfa_ioc_send_enable(struct bfa_ioc_s *ioc)
{
 struct bfi_ioc_ctrl_req_s enable_req;

 bfi_h2i_set(enable_req.mh, BFI_MC_IOC, BFI_IOC_H2I_ENABLE_REQ,
      bfa_ioc_portid(ioc));
 enable_req.clscode = cpu_to_be16(ioc->clscode);

 enable_req.tv_sec = be32_to_cpu(ktime_get_real_seconds());
 bfa_ioc_mbox_send(ioc, &enable_req, sizeof(struct bfi_ioc_ctrl_req_s));
}

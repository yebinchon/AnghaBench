
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct bfi_diag_ledtest_req_s {int freq; int led; int portid; void* color; void* cmd; int mh; } ;
struct TYPE_4__ {scalar_t__ msg; } ;
struct TYPE_3__ {TYPE_2__ mbcmd; } ;
struct bfa_diag_s {TYPE_1__ ledtest; int ioc; } ;
struct bfa_diag_ledtest_s {int freq; int led; scalar_t__ color; scalar_t__ cmd; } ;


 int BFI_DIAG_H2I_LEDTEST ;
 int BFI_MC_DIAG ;
 int bfa_ioc_mbox_queue (int ,TYPE_2__*) ;
 int bfa_ioc_portid (int ) ;
 int bfa_trc (struct bfa_diag_s*,int) ;
 int bfi_h2i_set (int ,int ,int ,int ) ;
 int cpu_to_be16 (int) ;

__attribute__((used)) static void
diag_ledtest_send(struct bfa_diag_s *diag, struct bfa_diag_ledtest_s *ledtest)
{
 struct bfi_diag_ledtest_req_s *msg;

 msg = (struct bfi_diag_ledtest_req_s *)diag->ledtest.mbcmd.msg;

 bfi_h2i_set(msg->mh, BFI_MC_DIAG, BFI_DIAG_H2I_LEDTEST,
   bfa_ioc_portid(diag->ioc));





 if (ledtest->freq)
  ledtest->freq = 500 / ledtest->freq;

 if (ledtest->freq == 0)
  ledtest->freq = 1;

 bfa_trc(diag, ledtest->freq);

 msg->cmd = (u8) ledtest->cmd;
 msg->color = (u8) ledtest->color;
 msg->portid = bfa_ioc_portid(diag->ioc);
 msg->led = ledtest->led;
 msg->freq = cpu_to_be16(ledtest->freq);


 bfa_ioc_mbox_queue(diag->ioc, &diag->ledtest.mbcmd);
}

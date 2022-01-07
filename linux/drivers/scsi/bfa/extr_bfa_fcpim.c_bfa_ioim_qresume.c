
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioim_s {int itnim; } ;


 int BFA_IOIM_SM_QRESUME ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int qresumes ;

__attribute__((used)) static void
bfa_ioim_qresume(void *cbarg)
{
 struct bfa_ioim_s *ioim = cbarg;

 bfa_stats(ioim->itnim, qresumes);
 bfa_sm_send_event(ioim, BFA_IOIM_SM_QRESUME);
}

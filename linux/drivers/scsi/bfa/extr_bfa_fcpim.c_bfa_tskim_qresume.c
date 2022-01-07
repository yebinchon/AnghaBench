
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_tskim_s {int itnim; } ;


 int BFA_TSKIM_SM_QRESUME ;
 int bfa_sm_send_event (struct bfa_tskim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int tm_qresumes ;

__attribute__((used)) static void
bfa_tskim_qresume(void *cbarg)
{
 struct bfa_tskim_s *tskim = cbarg;

 bfa_stats(tskim->itnim, tm_qresumes);
 bfa_sm_send_event(tskim, BFA_TSKIM_SM_QRESUME);
}

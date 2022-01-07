
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crw {int rsid; int erc; int anc; int rsc; int chn; int oflw; int slct; } ;
struct chsc_sei {int dummy; } ;


 int CHSC_SEI_NT0 ;
 int CHSC_SEI_NT2 ;
 int CIO_CRW_EVENT (int,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int CIO_TRACE_EVENT (int,char*) ;
 int chsc_process_event_information (struct chsc_sei*,int) ;
 int css_schedule_eval_all () ;
 struct chsc_sei* sei_page ;

__attribute__((used)) static void chsc_process_crw(struct crw *crw0, struct crw *crw1, int overflow)
{
 struct chsc_sei *sei = sei_page;

 if (overflow) {
  css_schedule_eval_all();
  return;
 }
 CIO_CRW_EVENT(2, "CRW reports slct=%d, oflw=%d, "
        "chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\n",
        crw0->slct, crw0->oflw, crw0->chn, crw0->rsc, crw0->anc,
        crw0->erc, crw0->rsid);

 CIO_TRACE_EVENT(2, "prcss");
 chsc_process_event_information(sei, CHSC_SEI_NT0 | CHSC_SEI_NT2);
}

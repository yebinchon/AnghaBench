
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int sch_no; int ssid; } ;
struct subchannel {int dev; } ;
struct crw {scalar_t__ erc; int rsid; int anc; int rsc; int chn; int oflw; int slct; } ;


 int CIO_CRW_EVENT (int,char*,int ,int ,int ,int ,int ,scalar_t__,int) ;
 scalar_t__ CRW_ERC_PMOD ;
 int css_evaluate_subchannel (struct subchannel_id,int ) ;
 int css_schedule_eval_all () ;
 int css_update_ssd_info (struct subchannel*) ;
 struct subchannel* get_subchannel_by_schid (struct subchannel_id) ;
 int init_subchannel_id (struct subchannel_id*) ;
 int put_device (int *) ;

__attribute__((used)) static void css_process_crw(struct crw *crw0, struct crw *crw1, int overflow)
{
 struct subchannel_id mchk_schid;
 struct subchannel *sch;

 if (overflow) {
  css_schedule_eval_all();
  return;
 }
 CIO_CRW_EVENT(2, "CRW0 reports slct=%d, oflw=%d, "
        "chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\n",
        crw0->slct, crw0->oflw, crw0->chn, crw0->rsc, crw0->anc,
        crw0->erc, crw0->rsid);
 if (crw1)
  CIO_CRW_EVENT(2, "CRW1 reports slct=%d, oflw=%d, "
         "chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\n",
         crw1->slct, crw1->oflw, crw1->chn, crw1->rsc,
         crw1->anc, crw1->erc, crw1->rsid);
 init_subchannel_id(&mchk_schid);
 mchk_schid.sch_no = crw0->rsid;
 if (crw1)
  mchk_schid.ssid = (crw1->rsid >> 4) & 3;

 if (crw0->erc == CRW_ERC_PMOD) {
  sch = get_subchannel_by_schid(mchk_schid);
  if (sch) {
   css_update_ssd_info(sch);
   put_device(&sch->dev);
  }
 }





 css_evaluate_subchannel(mchk_schid, 0);
}

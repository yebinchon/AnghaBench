
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int m_lkid; TYPE_1__ m_header; } ;
struct dlm_lkb {int lkb_remid; int lkb_nodeid; } ;
struct dlm_ls {struct dlm_lkb ls_stub_lkb; } ;



__attribute__((used)) static void setup_stub_lkb(struct dlm_ls *ls, struct dlm_message *ms)
{
 struct dlm_lkb *lkb = &ls->ls_stub_lkb;
 lkb->lkb_nodeid = ms->m_header.h_nodeid;
 lkb->lkb_remid = ms->m_lkid;
}

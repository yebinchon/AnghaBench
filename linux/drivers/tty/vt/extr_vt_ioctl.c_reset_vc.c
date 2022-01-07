
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ frsig; scalar_t__ acqsig; scalar_t__ relsig; scalar_t__ waitv; int mode; } ;
struct vc_data {int vt_newvt; int * vt_pid; TYPE_1__ vt_mode; int vc_num; int vc_mode; } ;


 int KD_TEXT ;
 int VT_AUTO ;
 int in_interrupt () ;
 int put_pid (int *) ;
 int reset_palette (struct vc_data*) ;
 int vt_reset_unicode (int ) ;

void reset_vc(struct vc_data *vc)
{
 vc->vc_mode = KD_TEXT;
 vt_reset_unicode(vc->vc_num);
 vc->vt_mode.mode = VT_AUTO;
 vc->vt_mode.waitv = 0;
 vc->vt_mode.relsig = 0;
 vc->vt_mode.acqsig = 0;
 vc->vt_mode.frsig = 0;
 put_pid(vc->vt_pid);
 vc->vt_pid = ((void*)0);
 vc->vt_newvt = -1;
 if (!in_interrupt())
  reset_palette(vc);
}

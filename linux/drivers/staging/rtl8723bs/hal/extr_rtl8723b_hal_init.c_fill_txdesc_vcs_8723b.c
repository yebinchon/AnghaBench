
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pkt_attrib {int vcs_mode; scalar_t__ ht_en; } ;
struct TYPE_5__ {scalar_t__ preamble_mode; } ;
struct TYPE_6__ {TYPE_1__ mlmext_info; } ;
struct adapter {TYPE_2__ mlmeextpriv; } ;
struct TYPE_7__ {int rtsen; int hw_rts_en; int cts2self; int rtsrate; int rts_ratefb_lmt; int rts_short; int rts_sc; } ;
typedef TYPE_3__* PTXDESC_8723B ;




 scalar_t__ PREAMBLE_SHORT ;

 int SCMapping_8723B (struct adapter*,struct pkt_attrib*) ;

__attribute__((used)) static void fill_txdesc_vcs_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, PTXDESC_8723B ptxdesc)
{


 if (pattrib->vcs_mode) {
  switch (pattrib->vcs_mode) {
  case 128:
   ptxdesc->rtsen = 1;

   ptxdesc->hw_rts_en = 1;
   break;

  case 130:
   ptxdesc->cts2self = 1;
   break;

  case 129:
  default:
   break;
  }

  ptxdesc->rtsrate = 8;
  ptxdesc->rts_ratefb_lmt = 0xF;

  if (padapter->mlmeextpriv.mlmext_info.preamble_mode == PREAMBLE_SHORT)
   ptxdesc->rts_short = 1;


  if (pattrib->ht_en)
   ptxdesc->rts_sc = SCMapping_8723B(padapter, pattrib);
 }
}

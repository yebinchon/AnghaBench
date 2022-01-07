
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pkt_attrib {scalar_t__ ht_en; } ;
struct adapter {int dummy; } ;
struct TYPE_3__ {int data_sc; int data_bw; } ;
typedef TYPE_1__* PTXDESC_8723B ;


 int BWMapping_8723B (struct adapter*,struct pkt_attrib*) ;
 int SCMapping_8723B (struct adapter*,struct pkt_attrib*) ;

__attribute__((used)) static void fill_txdesc_phy_8723b(struct adapter *padapter, struct pkt_attrib *pattrib, PTXDESC_8723B ptxdesc)
{


 if (pattrib->ht_en) {
  ptxdesc->data_bw = BWMapping_8723B(padapter, pattrib);

  ptxdesc->data_sc = SCMapping_8723B(padapter, pattrib);
 }
}

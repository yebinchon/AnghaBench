
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct lpfc_nodelist {int active_rrqs_xri_bitmap; } ;
struct lpfc_hba {int dummy; } ;


 scalar_t__ test_bit (int ,int ) ;

int
lpfc_test_rrq_active(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp,
   uint16_t xritag)
{
 if (!ndlp)
  return 0;
 if (!ndlp->active_rrqs_xri_bitmap)
  return 0;
 if (test_bit(xritag, ndlp->active_rrqs_xri_bitmap))
  return 1;
 else
  return 0;
}

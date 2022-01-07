
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct lpfc_hba {int hbalock; } ;
struct lpfc_fcf_rec {int addr_mode; int flag; int vlan_id; } ;
struct fcf_record {int dummy; } ;


 int RECORD_VALID ;
 int __lpfc_update_fcf_record_pri (struct lpfc_hba*,int ,struct fcf_record*) ;
 int bf_get (int ,struct fcf_record*) ;
 int lockdep_assert_held (int *) ;
 int lpfc_copy_fcf_record (struct lpfc_fcf_rec*,struct fcf_record*) ;
 int lpfc_fcf_record_fcf_index ;

__attribute__((used)) static void
__lpfc_update_fcf_record(struct lpfc_hba *phba, struct lpfc_fcf_rec *fcf_rec,
         struct fcf_record *new_fcf_record, uint32_t addr_mode,
         uint16_t vlan_id, uint32_t flag)
{
 lockdep_assert_held(&phba->hbalock);


 lpfc_copy_fcf_record(fcf_rec, new_fcf_record);

 fcf_rec->addr_mode = addr_mode;
 fcf_rec->vlan_id = vlan_id;
 fcf_rec->flag |= (flag | RECORD_VALID);
 __lpfc_update_fcf_record_pri(phba,
  bf_get(lpfc_fcf_record_fcf_index, new_fcf_record),
     new_fcf_record);
}

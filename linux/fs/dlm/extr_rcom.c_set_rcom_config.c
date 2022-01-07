
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rcom_config {void* rf_generation; void* rf_num_slots; void* rf_our_slot; void* rf_lsflags; void* rf_lvblen; } ;
struct dlm_ls {int ls_generation; int ls_slot; int ls_exflags; int ls_lvblen; } ;


 void* cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;

__attribute__((used)) static void set_rcom_config(struct dlm_ls *ls, struct rcom_config *rf,
       uint32_t num_slots)
{
 rf->rf_lvblen = cpu_to_le32(ls->ls_lvblen);
 rf->rf_lsflags = cpu_to_le32(ls->ls_exflags);

 rf->rf_our_slot = cpu_to_le16(ls->ls_slot);
 rf->rf_num_slots = cpu_to_le16(num_slots);
 rf->rf_generation = cpu_to_le32(ls->ls_generation);
}

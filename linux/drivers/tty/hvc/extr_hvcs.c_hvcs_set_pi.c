
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvcs_struct {int p_location_code; int p_partition_ID; int p_unit_address; } ;
struct hvcs_partner_info {int location_code; int partition_ID; int unit_address; } ;


 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void hvcs_set_pi(struct hvcs_partner_info *pi, struct hvcs_struct *hvcsd)
{
 hvcsd->p_unit_address = pi->unit_address;
 hvcsd->p_partition_ID = pi->partition_ID;


 strlcpy(hvcsd->p_location_code, pi->location_code,
  sizeof(hvcsd->p_location_code));
}

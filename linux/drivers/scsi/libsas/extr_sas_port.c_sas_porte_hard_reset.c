
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct asd_sas_phy {int dummy; } ;
struct asd_sas_event {struct asd_sas_phy* phy; } ;


 int sas_deform_port (struct asd_sas_phy*,int) ;
 struct asd_sas_event* to_asd_sas_event (struct work_struct*) ;

void sas_porte_hard_reset(struct work_struct *work)
{
 struct asd_sas_event *ev = to_asd_sas_event(work);
 struct asd_sas_phy *phy = ev->phy;

 sas_deform_port(phy, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_sas_phy {int dummy; } ;


 int mvs_port_notify_formed (struct asd_sas_phy*,int) ;

void mvs_port_formed(struct asd_sas_phy *sas_phy)
{
 mvs_port_notify_formed(sas_phy, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_sas_phy {int dummy; } ;


 int hisi_sas_port_notify_formed (struct asd_sas_phy*) ;

__attribute__((used)) static void hisi_sas_port_formed(struct asd_sas_phy *sas_phy)
{
 hisi_sas_port_notify_formed(sas_phy);
}

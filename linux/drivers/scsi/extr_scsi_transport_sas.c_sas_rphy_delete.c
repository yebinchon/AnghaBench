
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_rphy {int dummy; } ;


 int sas_rphy_free (struct sas_rphy*) ;
 int sas_rphy_remove (struct sas_rphy*) ;

void
sas_rphy_delete(struct sas_rphy *rphy)
{
 sas_rphy_remove(rphy);
 sas_rphy_free(rphy);
}

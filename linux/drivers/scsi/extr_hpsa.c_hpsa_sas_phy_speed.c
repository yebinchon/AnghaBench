
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_phy_linkrates {int dummy; } ;
struct sas_phy {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
hpsa_sas_phy_speed(struct sas_phy *phy, struct sas_phy_linkrates *rates)
{
 return -EINVAL;
}

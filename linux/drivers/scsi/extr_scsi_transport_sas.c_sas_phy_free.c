
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_phy {int dev; } ;


 int put_device (int *) ;
 int transport_destroy_device (int *) ;

void sas_phy_free(struct sas_phy *phy)
{
 transport_destroy_device(&phy->dev);
 put_device(&phy->dev);
}

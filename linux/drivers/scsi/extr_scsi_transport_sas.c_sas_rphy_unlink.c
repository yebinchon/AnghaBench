
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct sas_rphy {TYPE_1__ dev; } ;
struct sas_port {int * rphy; } ;


 struct sas_port* dev_to_sas_port (int ) ;

void sas_rphy_unlink(struct sas_rphy *rphy)
{
 struct sas_port *parent = dev_to_sas_port(rphy->dev.parent);

 parent->rphy = ((void*)0);
}

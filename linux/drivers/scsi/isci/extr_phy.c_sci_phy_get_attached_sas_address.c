
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sci_sas_address {int dummy; } ;
struct sas_identify_frame {int sas_addr; } ;
struct TYPE_2__ {struct sas_identify_frame iaf; } ;
struct isci_phy {TYPE_1__ frame_rcvd; } ;


 int SAS_ADDR_SIZE ;
 int memcpy (struct sci_sas_address*,int ,int ) ;

void sci_phy_get_attached_sas_address(struct isci_phy *iphy, struct sci_sas_address *sas)
{
 struct sas_identify_frame *iaf;

 iaf = &iphy->frame_rcvd.iaf;
 memcpy(sas, iaf->sas_addr, SAS_ADDR_SIZE);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int hba_flag; int fc_linkspeed; } ;
struct TYPE_2__ {void* AttrInt; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int HBA_FCOE_MODE ;
 void* HBA_PORTSPEED_100GE ;
 void* HBA_PORTSPEED_10GE ;
 void* HBA_PORTSPEED_10GFC ;
 void* HBA_PORTSPEED_128GFC ;
 void* HBA_PORTSPEED_16GFC ;
 void* HBA_PORTSPEED_1GFC ;
 void* HBA_PORTSPEED_25GE ;
 void* HBA_PORTSPEED_2GFC ;
 void* HBA_PORTSPEED_32GFC ;
 void* HBA_PORTSPEED_40GE ;
 void* HBA_PORTSPEED_4GFC ;
 void* HBA_PORTSPEED_64GFC ;
 void* HBA_PORTSPEED_8GFC ;
 void* HBA_PORTSPEED_UNKNOWN ;
 int RPRT_PORT_SPEED ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (void*) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_speed(struct lpfc_vport *vport,
     struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;

 if (!(phba->hba_flag & HBA_FCOE_MODE)) {
  switch (phba->fc_linkspeed) {
  case 133:
   ae->un.AttrInt = HBA_PORTSPEED_1GFC;
   break;
  case 132:
   ae->un.AttrInt = HBA_PORTSPEED_2GFC;
   break;
  case 130:
   ae->un.AttrInt = HBA_PORTSPEED_4GFC;
   break;
  case 128:
   ae->un.AttrInt = HBA_PORTSPEED_8GFC;
   break;
  case 136:
   ae->un.AttrInt = HBA_PORTSPEED_10GFC;
   break;
  case 134:
   ae->un.AttrInt = HBA_PORTSPEED_16GFC;
   break;
  case 131:
   ae->un.AttrInt = HBA_PORTSPEED_32GFC;
   break;
  case 129:
   ae->un.AttrInt = HBA_PORTSPEED_64GFC;
   break;
  case 135:
   ae->un.AttrInt = HBA_PORTSPEED_128GFC;
   break;
  default:
   ae->un.AttrInt = HBA_PORTSPEED_UNKNOWN;
   break;
  }
 } else {
  switch (phba->fc_linkspeed) {
  case 139:
   ae->un.AttrInt = HBA_PORTSPEED_10GE;
   break;
  case 138:
   ae->un.AttrInt = HBA_PORTSPEED_25GE;
   break;
  case 137:
   ae->un.AttrInt = HBA_PORTSPEED_40GE;
   break;
  case 140:
   ae->un.AttrInt = HBA_PORTSPEED_100GE;
   break;
  default:
   ae->un.AttrInt = HBA_PORTSPEED_UNKNOWN;
   break;
  }
 }

 ae->un.AttrInt = cpu_to_be32(ae->un.AttrInt);
 size = FOURBYTES + sizeof(uint32_t);
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_PORT_SPEED);
 return size;
}

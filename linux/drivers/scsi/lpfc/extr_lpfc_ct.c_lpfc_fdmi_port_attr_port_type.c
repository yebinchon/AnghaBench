
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ fc_topology; } ;
struct TYPE_2__ {void* AttrInt; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int LPFC_FDMI_PORTTYPE_NLPORT ;
 int LPFC_FDMI_PORTTYPE_NPORT ;
 scalar_t__ LPFC_TOPOLOGY_LOOP ;
 int RPRT_PORT_TYPE ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_port_type(struct lpfc_vport *vport,
         struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 if (phba->fc_topology == LPFC_TOPOLOGY_LOOP)
  ae->un.AttrInt = cpu_to_be32(LPFC_FDMI_PORTTYPE_NLPORT);
 else
  ae->un.AttrInt = cpu_to_be32(LPFC_FDMI_PORTTYPE_NPORT);
 size = FOURBYTES + sizeof(uint32_t);
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_PORT_TYPE);
 return size;
}

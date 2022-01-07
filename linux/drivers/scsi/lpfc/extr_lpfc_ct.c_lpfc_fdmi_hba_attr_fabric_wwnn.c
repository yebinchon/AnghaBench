
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int fabric_nodename; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_2__ {int AttrWWN; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int RHBA_FABRIC_WWNN ;
 void* cpu_to_be16 (int) ;
 int memcpy (int *,int *,int) ;
 int memset (struct lpfc_fdmi_attr_entry*,int ,int) ;

__attribute__((used)) static int
lpfc_fdmi_hba_attr_fabric_wwnn(struct lpfc_vport *vport,
          struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 memset(ae, 0, sizeof(struct lpfc_name));

 memcpy(&ae->un.AttrWWN, &vport->fabric_nodename,
        sizeof(struct lpfc_name));
 size = FOURBYTES + sizeof(struct lpfc_name);
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RHBA_FABRIC_WWNN);
 return size;
}

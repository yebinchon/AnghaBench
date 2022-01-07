
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int ModelName; } ;
struct TYPE_2__ {int AttrString; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int RHBA_MODEL ;
 void* cpu_to_be16 (int) ;
 int memset (struct lpfc_fdmi_attr_entry*,int ,int) ;
 int strncpy (int ,int ,int) ;
 int strnlen (int ,int) ;

__attribute__((used)) static int
lpfc_fdmi_hba_attr_model(struct lpfc_vport *vport,
    struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t len, size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 memset(ae, 0, 256);

 strncpy(ae->un.AttrString, phba->ModelName,
  sizeof(ae->un.AttrString));
 len = strnlen(ae->un.AttrString, sizeof(ae->un.AttrString));
 len += (len & 3) ? (4 - (len & 3)) : 4;
 size = FOURBYTES + len;
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RHBA_MODEL);
 return size;
}

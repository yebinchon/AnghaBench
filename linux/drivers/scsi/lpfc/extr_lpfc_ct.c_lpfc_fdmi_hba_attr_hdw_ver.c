
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_4__ {int biuRev; } ;
struct TYPE_6__ {TYPE_1__ rev; } ;
struct lpfc_hba {TYPE_3__ vpd; } ;
struct TYPE_5__ {char* AttrString; } ;
struct lpfc_fdmi_attr_entry {TYPE_2__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;
typedef TYPE_3__ lpfc_vpd_t ;


 int FOURBYTES ;
 int RHBA_HARDWARE_VERSION ;
 void* cpu_to_be16 (int) ;
 int memset (struct lpfc_fdmi_attr_entry*,int ,int) ;

__attribute__((used)) static int
lpfc_fdmi_hba_attr_hdw_ver(struct lpfc_vport *vport,
      struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_hba *phba = vport->phba;
 lpfc_vpd_t *vp = &phba->vpd;
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t i, j, incr, size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 memset(ae, 0, 256);


 incr = vp->rev.biuRev;
 for (i = 0; i < 8; i++) {
  j = (incr & 0xf);
  if (j <= 9)
   ae->un.AttrString[7 - i] =
       (char)((uint8_t) 0x30 +
       (uint8_t) j);
  else
   ae->un.AttrString[7 - i] =
       (char)((uint8_t) 0x61 +
       (uint8_t) (j - 10));
  incr = (incr >> 4);
 }
 size = FOURBYTES + 8;
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RHBA_HARDWARE_VERSION);
 return size;
}

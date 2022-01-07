
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {scalar_t__ vpi; } ;
struct TYPE_2__ {void* AttrInt; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int RPRT_SMART_PORT_INFO ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static int
lpfc_fdmi_smart_attr_port_info(struct lpfc_vport *vport,
          struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;


 if (vport->vpi)
  ae->un.AttrInt = cpu_to_be32(2);
 else
  ae->un.AttrInt = cpu_to_be32(1);
 size = FOURBYTES + sizeof(uint32_t);
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_SMART_PORT_INFO);
 return size;
}

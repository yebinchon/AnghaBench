
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int fdmi_num_disc; } ;
struct TYPE_2__ {int AttrInt; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;


 int FOURBYTES ;
 int RPRT_DISC_PORT ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int lpfc_find_map_node (struct lpfc_vport*) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_num_disc(struct lpfc_vport *vport,
        struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 vport->fdmi_num_disc = lpfc_find_map_node(vport);
 ae->un.AttrInt = cpu_to_be32(vport->fdmi_num_disc);
 size = FOURBYTES + sizeof(uint32_t);
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_DISC_PORT);
 return size;
}

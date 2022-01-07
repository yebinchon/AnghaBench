
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct TYPE_3__ {int AttrString; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;
struct TYPE_4__ {char* nodename; } ;


 int FOURBYTES ;
 int RPRT_HOST_NAME ;
 void* cpu_to_be16 (int) ;
 TYPE_2__* init_utsname () ;
 int memset (struct lpfc_fdmi_attr_entry*,int ,int) ;
 int snprintf (int ,int,char*,char*) ;
 int strnlen (int ,int) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_host_name(struct lpfc_vport *vport,
         struct lpfc_fdmi_attr_def *ad)
{
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t len, size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 memset(ae, 0, 256);

 snprintf(ae->un.AttrString, sizeof(ae->un.AttrString), "%s",
   init_utsname()->nodename);

 len = strnlen(ae->un.AttrString, sizeof(ae->un.AttrString));
 len += (len & 3) ? (4 - (len & 3)) : 4;
 size = FOURBYTES + len;
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_HOST_NAME);
 return size;
}

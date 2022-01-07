
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct TYPE_2__ {scalar_t__ AttrString; } ;
struct lpfc_fdmi_attr_entry {TYPE_1__ un; } ;
struct lpfc_fdmi_attr_def {void* AttrType; void* AttrLen; int AttrValue; } ;
struct Scsi_Host {int host_no; } ;


 int FOURBYTES ;
 int RPRT_OS_DEVICE_NAME ;
 void* cpu_to_be16 (int) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int memset (struct lpfc_fdmi_attr_entry*,int ,int) ;
 int snprintf (scalar_t__,int,char*,int) ;
 int strnlen (char*,int) ;

__attribute__((used)) static int
lpfc_fdmi_port_attr_os_devname(struct lpfc_vport *vport,
          struct lpfc_fdmi_attr_def *ad)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_fdmi_attr_entry *ae;
 uint32_t len, size;

 ae = (struct lpfc_fdmi_attr_entry *)&ad->AttrValue;
 memset(ae, 0, 256);

 snprintf(ae->un.AttrString, sizeof(ae->un.AttrString),
   "/sys/class/scsi_host/host%d", shost->host_no);
 len = strnlen((char *)ae->un.AttrString,
     sizeof(ae->un.AttrString));
 len += (len & 3) ? (4 - (len & 3)) : 4;
 size = FOURBYTES + len;
 ad->AttrLen = cpu_to_be16(size);
 ad->AttrType = cpu_to_be16(RPRT_OS_DEVICE_NAME);
 return size;
}

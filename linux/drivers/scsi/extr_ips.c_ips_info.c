
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int ad_type; } ;
typedef TYPE_1__ ips_ha_t ;
typedef int buffer ;


 int IPS_BUILD_IDENT ;
 TYPE_1__* IPS_HA (struct Scsi_Host*) ;
 char* IPS_VERSION_HIGH ;
 int IPS_VERSION_LOW ;
 int MAX_ADAPTER_NAME ;
 int METHOD_TRACE (char*,int) ;
 char** ips_adapter_name ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,char*,char*,int,int ) ;
 int strcat (char*,char*) ;

__attribute__((used)) static const char *
ips_info(struct Scsi_Host *SH)
{
 static char buffer[256];
 char *bp;
 ips_ha_t *ha;

 METHOD_TRACE("ips_info", 1);

 ha = IPS_HA(SH);

 if (!ha)
  return (((void*)0));

 bp = &buffer[0];
 memset(bp, 0, sizeof (buffer));

 sprintf(bp, "%s%s%s Build %d", "IBM PCI ServeRAID ",
  IPS_VERSION_HIGH, IPS_VERSION_LOW, IPS_BUILD_IDENT);

 if (ha->ad_type > 0 && ha->ad_type <= MAX_ADAPTER_NAME) {
  strcat(bp, " <");
  strcat(bp, ips_adapter_name[ha->ad_type - 1]);
  strcat(bp, ">");
 }

 return (bp);
}

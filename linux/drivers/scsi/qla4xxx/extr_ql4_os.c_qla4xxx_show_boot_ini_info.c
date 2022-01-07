
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {char* name_string; } ;
typedef int ssize_t ;


 int ENOSYS ;

 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t qla4xxx_show_boot_ini_info(void *data, int type, char *buf)
{
 struct scsi_qla_host *ha = data;
 char *str = buf;
 int rc;

 switch (type) {
 case 128:
  rc = sprintf(str, "%s\n", ha->name_string);
  break;
 default:
  rc = -ENOSYS;
  break;
 }
 return rc;
}

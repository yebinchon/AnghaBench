
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
typedef int ssize_t ;


 int BEISCSI_SYSFS_ISCSI_BOOT_FLAGS ;
 int EPERM ;



 int beiscsi_get_macaddr (char*,struct beiscsi_hba*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t beiscsi_show_boot_eth_info(void *data, int type, char *buf)
{
 struct beiscsi_hba *phba = data;
 char *str = buf;
 int rc = -EPERM;

 switch (type) {
 case 130:
  rc = sprintf(str, "%d\n", BEISCSI_SYSFS_ISCSI_BOOT_FLAGS);
  break;
 case 129:
  rc = sprintf(str, "0\n");
  break;
 case 128:
  rc = beiscsi_get_macaddr(str, phba);
  break;
 }
 return rc;
}

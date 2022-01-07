
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* initiator_iscsiname; } ;
struct TYPE_4__ {TYPE_1__ boot_sess; } ;
struct beiscsi_hba {TYPE_2__ boot_struct; } ;
typedef int ssize_t ;


 int EPERM ;

 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t beiscsi_show_boot_ini_info(void *data, int type, char *buf)
{
 struct beiscsi_hba *phba = data;
 char *str = buf;
 int rc = -EPERM;

 switch (type) {
 case 128:
  rc = sprintf(str, "%s\n",
        phba->boot_struct.boot_sess.initiator_iscsiname);
  break;
 }
 return rc;
}

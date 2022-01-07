
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* sysname; char* machine; char* release; } ;


 char* QLA2XXX_VERSION ;
 int sprintf (char*,char*,char*,char*,char*,char*) ;
 TYPE_1__* utsname () ;

__attribute__((used)) static ssize_t tcm_qla2xxx_wwn_version_show(struct config_item *item,
  char *page)
{
 return sprintf(page,
     "TCM QLOGIC QLA2XXX NPIV capable fabric module %s on %s/%s on %s\n",
     QLA2XXX_VERSION, utsname()->sysname,
     utsname()->machine, utsname()->release);
}

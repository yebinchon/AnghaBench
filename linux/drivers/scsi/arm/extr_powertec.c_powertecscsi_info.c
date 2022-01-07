
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {char* type; } ;
struct TYPE_7__ {TYPE_4__ scsi; } ;
struct powertec_info {scalar_t__ term_ctl; TYPE_1__* ec; TYPE_3__ info; } ;
struct Scsi_Host {TYPE_2__* hostt; scalar_t__ hostdata; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {int slot_no; } ;


 char* VERSION ;
 int sprintf (char*,char*,char*,char*,int,char*,char*) ;

const char *powertecscsi_info(struct Scsi_Host *host)
{
 struct powertec_info *info = (struct powertec_info *)host->hostdata;
 static char string[150];

 sprintf(string, "%s (%s) in slot %d v%s terminators o%s",
  host->hostt->name, info->info.scsi.type, info->ec->slot_no,
  VERSION, info->term_ctl ? "n" : "ff");

 return string;
}

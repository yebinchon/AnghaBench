
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vscsibk_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int nodename; } ;


 scalar_t__ IS_ERR (char**) ;
 int XBT_NIL ;
 int kfree (char**) ;
 int scsiback_do_1lun_hotplug (struct vscsibk_info*,int,char*) ;
 char** xenbus_directory (int ,int ,char*,unsigned int*) ;

__attribute__((used)) static void scsiback_do_lun_hotplug(struct vscsibk_info *info, int op)
{
 int i;
 char **dir;
 unsigned int ndir = 0;

 dir = xenbus_directory(XBT_NIL, info->dev->nodename, "vscsi-devs",
          &ndir);
 if (IS_ERR(dir))
  return;

 for (i = 0; i < ndir; i++)
  scsiback_do_1lun_hotplug(info, op, dir[i]);

 kfree(dir);
}

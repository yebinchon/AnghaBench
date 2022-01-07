
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mode; int name; } ;
struct TYPE_3__ {TYPE_2__ attr; int show; } ;
struct status_attr {TYPE_1__ attr; int name; } ;


 scalar_t__ MAX_STATUS_NAME ;
 int S_IRUGO ;
 int snprintf (int ,scalar_t__,char*,int) ;
 struct status_attr* status_attrs ;
 int status_show ;
 int strcpy (int ,char*) ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static void set_status_attr(int id)
{
 struct status_attr *status;

 status = status_attrs + id;
 if (id == 0)
  strcpy(status->name, "status");
 else
  snprintf(status->name, MAX_STATUS_NAME+1, "status.%d", id);
 status->attr.attr.name = status->name;
 status->attr.attr.mode = S_IRUGO;
 status->attr.show = status_show;
 sysfs_attr_init(&status->attr.attr);
}

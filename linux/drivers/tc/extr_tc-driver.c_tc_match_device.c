
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_driver {struct tc_device_id* id_table; } ;
struct tc_device_id {scalar_t__* vendor; scalar_t__* name; } ;
struct tc_dev {int vendor; int name; } ;


 scalar_t__ strcmp (int ,scalar_t__*) ;

const struct tc_device_id *tc_match_device(struct tc_driver *tdrv,
        struct tc_dev *tdev)
{
 const struct tc_device_id *id = tdrv->id_table;

 if (id) {
  while (id->name[0] || id->vendor[0]) {
   if (strcmp(tdev->name, id->name) == 0 &&
       strcmp(tdev->vendor, id->vendor) == 0)
    return id;
   id++;
  }
 }
 return ((void*)0);
}

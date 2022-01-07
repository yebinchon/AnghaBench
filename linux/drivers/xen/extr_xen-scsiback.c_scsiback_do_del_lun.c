
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vscsibk_info {TYPE_1__* dev; } ;
struct ids_tuple {int dummy; } ;
struct TYPE_2__ {int nodename; } ;


 int XBT_NIL ;
 int XenbusStateClosed ;
 int pr_err (char*,char const*) ;
 int scsiback_del_translation_entry (struct vscsibk_info*,struct ids_tuple*) ;
 scalar_t__ xenbus_printf (int ,int ,char const*,char*,int ) ;

__attribute__((used)) static void scsiback_do_del_lun(struct vscsibk_info *info, const char *state,
    struct ids_tuple *vir)
{
 if (!scsiback_del_translation_entry(info, vir)) {
  if (xenbus_printf(XBT_NIL, info->dev->nodename, state,
      "%d", XenbusStateClosed))
   pr_err("xenbus_printf error %s\n", state);
 }
}

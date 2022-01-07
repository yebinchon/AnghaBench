
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct guid_block {int guid; int flags; int notify_id; int object_id; int instance_count; } ;


 int ACPI_WMI_EVENT ;
 int ACPI_WMI_EXPENSIVE ;
 int ACPI_WMI_METHOD ;
 int ACPI_WMI_STRING ;
 int pr_cont (char*) ;
 int pr_info (char*,int) ;

__attribute__((used)) static void wmi_dump_wdg(const struct guid_block *g)
{
 pr_info("%pUL:\n", g->guid);
 if (g->flags & ACPI_WMI_EVENT)
  pr_info("\tnotify_id: 0x%02X\n", g->notify_id);
 else
  pr_info("\tobject_id: %2pE\n", g->object_id);
 pr_info("\tinstance_count: %d\n", g->instance_count);
 pr_info("\tflags: %#x", g->flags);
 if (g->flags) {
  if (g->flags & ACPI_WMI_EXPENSIVE)
   pr_cont(" ACPI_WMI_EXPENSIVE");
  if (g->flags & ACPI_WMI_METHOD)
   pr_cont(" ACPI_WMI_METHOD");
  if (g->flags & ACPI_WMI_STRING)
   pr_cont(" ACPI_WMI_STRING");
  if (g->flags & ACPI_WMI_EVENT)
   pr_cont(" ACPI_WMI_EVENT");
 }
 pr_cont("\n");

}

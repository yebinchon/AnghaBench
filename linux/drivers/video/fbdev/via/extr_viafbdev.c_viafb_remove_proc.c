
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lvds_chip_info2; int lvds_chip_info; } ;
struct viafb_shared {TYPE_1__ chip_info; struct proc_dir_entry* iga1_proc_entry; struct proc_dir_entry* iga2_proc_entry; struct proc_dir_entry* proc_entry; } ;
struct proc_dir_entry {int dummy; } ;


 scalar_t__ IS_VT1636 (int ) ;
 int remove_proc_entry (char*,struct proc_dir_entry*) ;

__attribute__((used)) static void viafb_remove_proc(struct viafb_shared *shared)
{
 struct proc_dir_entry *viafb_entry = shared->proc_entry;

 if (!viafb_entry)
  return;

 remove_proc_entry("output_devices", shared->iga2_proc_entry);
 remove_proc_entry("iga2", viafb_entry);
 remove_proc_entry("output_devices", shared->iga1_proc_entry);
 remove_proc_entry("iga1", viafb_entry);
 remove_proc_entry("supported_output_devices", viafb_entry);
 remove_proc_entry("viafb", ((void*)0));
}

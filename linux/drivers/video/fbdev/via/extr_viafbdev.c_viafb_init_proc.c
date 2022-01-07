
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lvds_chip_info2; int lvds_chip_info; } ;
struct viafb_shared {struct proc_dir_entry* iga2_proc_entry; struct proc_dir_entry* iga1_proc_entry; TYPE_1__ chip_info; struct proc_dir_entry* proc_entry; } ;
struct proc_dir_entry {int dummy; } ;


 scalar_t__ IS_VT1636 (int ) ;
 int proc_create (char*,int ,struct proc_dir_entry*,int *) ;
 int proc_create_single (char*,int ,struct proc_dir_entry*,int ) ;
 struct proc_dir_entry* proc_mkdir (char*,struct proc_dir_entry*) ;
 int viafb_dfph_proc_fops ;
 int viafb_dfpl_proc_fops ;
 int viafb_dvp0_proc_fops ;
 int viafb_dvp1_proc_fops ;
 int viafb_iga1_odev_proc_fops ;
 int viafb_iga2_odev_proc_fops ;
 int viafb_sup_odev_proc_show ;
 int viafb_vt1636_proc_fops ;

__attribute__((used)) static void viafb_init_proc(struct viafb_shared *shared)
{
 struct proc_dir_entry *iga1_entry, *iga2_entry,
  *viafb_entry = proc_mkdir("viafb", ((void*)0));

 shared->proc_entry = viafb_entry;
 if (viafb_entry) {
  proc_create_single("supported_output_devices", 0, viafb_entry,
   viafb_sup_odev_proc_show);
  iga1_entry = proc_mkdir("iga1", viafb_entry);
  shared->iga1_proc_entry = iga1_entry;
  proc_create("output_devices", 0, iga1_entry,
   &viafb_iga1_odev_proc_fops);
  iga2_entry = proc_mkdir("iga2", viafb_entry);
  shared->iga2_proc_entry = iga2_entry;
  proc_create("output_devices", 0, iga2_entry,
   &viafb_iga2_odev_proc_fops);
 }
}

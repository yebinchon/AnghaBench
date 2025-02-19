
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_scsi_cpu_info {int max_cpus; } ;
struct csio_hw {int num_sqsets; int num_pports; struct csio_scsi_cpu_info* scsi_cpu_info; } ;


 int csio_dbg (struct csio_hw*,char*,int) ;

__attribute__((used)) static void
csio_reduce_sqsets(struct csio_hw *hw, int cnt)
{
 int i;
 struct csio_scsi_cpu_info *info;

 while (cnt < hw->num_sqsets) {
  for (i = 0; i < hw->num_pports; i++) {
   info = &hw->scsi_cpu_info[i];
   if (info->max_cpus > 1) {
    info->max_cpus--;
    hw->num_sqsets--;
    if (hw->num_sqsets <= cnt)
     break;
   }
  }
 }

 csio_dbg(hw, "Reduced sqsets to %d\n", hw->num_sqsets);
}

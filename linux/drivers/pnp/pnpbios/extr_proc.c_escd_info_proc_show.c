
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct escd_info_struc {int nv_storage_base; int escd_size; int min_escd_write_size; } ;


 int EIO ;
 scalar_t__ pnp_bios_escd_info (struct escd_info_struc*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static int escd_info_proc_show(struct seq_file *m, void *v)
{
 struct escd_info_struc escd;

 if (pnp_bios_escd_info(&escd))
  return -EIO;
 seq_printf(m, "min_ESCD_write_size %d\n"
   "ESCD_size %d\n"
   "NVRAM_base 0x%x\n",
   escd.min_escd_write_size,
   escd.escd_size, escd.nv_storage_base);
 return 0;
}

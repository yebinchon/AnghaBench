
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rapl_domain {int dummy; } ;
struct TYPE_2__ {int floor_freq_reg_addr; } ;


 int BT_MBI_UNIT_PMC ;
 int MBI_CR_READ ;
 int MBI_CR_WRITE ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 int iosf_mbi_write (int ,int ,int ,int) ;
 int pr_err (char*) ;
 TYPE_1__* rapl_defaults ;

__attribute__((used)) static void set_floor_freq_atom(struct rapl_domain *rd, bool enable)
{
 static u32 power_ctrl_orig_val;
 u32 mdata;

 if (!rapl_defaults->floor_freq_reg_addr) {
  pr_err("Invalid floor frequency config register\n");
  return;
 }

 if (!power_ctrl_orig_val)
  iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_CR_READ,
         rapl_defaults->floor_freq_reg_addr,
         &power_ctrl_orig_val);
 mdata = power_ctrl_orig_val;
 if (enable) {
  mdata &= ~(0x7f << 8);
  mdata |= 1 << 8;
 }
 iosf_mbi_write(BT_MBI_UNIT_PMC, MBI_CR_WRITE,
         rapl_defaults->floor_freq_reg_addr, mdata);
}

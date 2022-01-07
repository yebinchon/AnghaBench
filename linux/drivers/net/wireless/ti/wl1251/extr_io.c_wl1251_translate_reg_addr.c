
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int physical_reg_addr; int virtual_reg_addr; } ;


 int ACX_REG_TABLE_LEN ;
 int EINVAL ;
 int REGISTERS_BASE ;
 int wl1251_error (char*,int) ;
 int* wl1251_io_reg_table ;

__attribute__((used)) static int wl1251_translate_reg_addr(struct wl1251 *wl, int addr)
{



 if (addr < REGISTERS_BASE) {

  if (addr >= ACX_REG_TABLE_LEN) {
   wl1251_error("address out of range (%d)", addr);
   return -EINVAL;
  }
  addr = wl1251_io_reg_table[addr];
 }

 return addr - wl->physical_reg_addr + wl->virtual_reg_addr;
}

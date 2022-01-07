
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int dummy; } ;


 scalar_t__ MD_DIRECT_ROM_READ_BASE ;
 scalar_t__ MD_DIRECT_ROM_WINDOW ;
 int qla82xx_md_rw_32 (struct qla_hw_data*,scalar_t__,int,int) ;

__attribute__((used)) static int
qla82xx_do_rom_fast_read(struct qla_hw_data *ha, int addr, int *valp)
{

 qla82xx_md_rw_32(ha, MD_DIRECT_ROM_WINDOW, (addr & 0xFFFF0000), 1);
 *valp = qla82xx_md_rw_32(ha, MD_DIRECT_ROM_READ_BASE +
     (addr & 0x0000FFFF), 0, 0);

 return 0;
}

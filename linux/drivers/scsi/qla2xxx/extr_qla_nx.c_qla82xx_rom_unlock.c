
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int dummy; } ;


 int PCIE_SEM2_UNLOCK ;
 int QLA82XX_PCIE_REG (int ) ;
 int QLA82XX_ROM_LOCK_ID ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int) ;

__attribute__((used)) static void
qla82xx_rom_unlock(struct qla_hw_data *ha)
{
 qla82xx_wr_32(ha, QLA82XX_ROM_LOCK_ID, 0xffffffff);
 qla82xx_rd_32(ha, QLA82XX_PCIE_REG(PCIE_SEM2_UNLOCK));
}

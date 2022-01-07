
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int hardware_lock; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLAFX00_GET_HBA_SOC_REG (struct qla_hw_data*,int) ;
 int QLAFX00_SET_HBA_SOC_REG (struct qla_hw_data*,int,int) ;
 int SOC_CORE_TIMER_REG ;
 int SOC_FABRIC_CONFIG_REG ;
 int SOC_FABRIC_CONTROL_REG ;
 int SOC_FABRIC_RST_CONTROL_REG ;
 int SOC_INTERRUPT_SOURCE_I_CONTROL_REG ;
 int SOC_IRQ_ACK_REG ;
 int SOC_PWR_MANAGEMENT_PWR_DOWN_REG ;
 int SOC_SW_RST_CONTROL_REG_CORE0 ;
 int barrier () ;
 int msleep (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static inline void
qlafx00_soc_cpu_reset(scsi_qla_host_t *vha)
{
 unsigned long flags = 0;
 struct qla_hw_data *ha = vha->hw;
 int i, core;
 uint32_t cnt;
 uint32_t reg_val;

 spin_lock_irqsave(&ha->hardware_lock, flags);

 QLAFX00_SET_HBA_SOC_REG(ha, 0x80004, 0);
 QLAFX00_SET_HBA_SOC_REG(ha, 0x82004, 0);


 QLAFX00_SET_HBA_SOC_REG(ha, 0x60920, 0x02);
 QLAFX00_SET_HBA_SOC_REG(ha, 0x60924, 0x02);
 QLAFX00_SET_HBA_SOC_REG(ha, 0xf0920, 0x02);
 QLAFX00_SET_HBA_SOC_REG(ha, 0xf0924, 0x02);


 reg_val = QLAFX00_GET_HBA_SOC_REG(ha, 0x60840);
 reg_val &= ~(1<<12);
 QLAFX00_SET_HBA_SOC_REG(ha, 0x60840, reg_val);

 reg_val = QLAFX00_GET_HBA_SOC_REG(ha, 0x60844);
 reg_val &= ~(1<<12);
 QLAFX00_SET_HBA_SOC_REG(ha, 0x60844, reg_val);

 reg_val = QLAFX00_GET_HBA_SOC_REG(ha, 0x60848);
 reg_val &= ~(1<<12);
 QLAFX00_SET_HBA_SOC_REG(ha, 0x60848, reg_val);

 reg_val = QLAFX00_GET_HBA_SOC_REG(ha, 0x6084C);
 reg_val &= ~(1<<12);
 QLAFX00_SET_HBA_SOC_REG(ha, 0x6084C, reg_val);

 for (i = 0; i < 100000; i++) {
  if ((QLAFX00_GET_HBA_SOC_REG(ha, 0xd0000) & 0x10000000) == 0 &&
      (QLAFX00_GET_HBA_SOC_REG(ha, 0x10600) & 0x1) == 0)
   break;
  udelay(100);
 }


 for (i = 0; i < 4; i++) {
  QLAFX00_SET_HBA_SOC_REG(ha,
      (SOC_SW_RST_CONTROL_REG_CORE0 + 8*i), (0xF01));
  QLAFX00_SET_HBA_SOC_REG(ha,
      (SOC_SW_RST_CONTROL_REG_CORE0 + 4 + 8*i), (0x01010101));
 }


 QLAFX00_SET_HBA_SOC_REG(ha, SOC_FABRIC_RST_CONTROL_REG, (0x011f0101));


 QLAFX00_SET_HBA_SOC_REG(ha, 0x10610, 1);
 QLAFX00_SET_HBA_SOC_REG(ha, 0x10600, 0);


 for (i = 0; i < 5; i++) {
  QLAFX00_SET_HBA_SOC_REG(ha,
      (SOC_PWR_MANAGEMENT_PWR_DOWN_REG + 4*i), (0x0));
 }


 for (i = 0; i < 115; i++) {
  QLAFX00_SET_HBA_SOC_REG(ha,
      (SOC_INTERRUPT_SOURCE_I_CONTROL_REG + 4*i), (0x0));
 }


 for (core = 0; core < 4; core++)
  for (i = 0; i < 8; i++)
   QLAFX00_SET_HBA_SOC_REG(ha,
       (SOC_CORE_TIMER_REG + 0x100*core + 4*i), (0x0));


 for (core = 0; core < 4; core++)
  QLAFX00_SET_HBA_SOC_REG(ha,
      (SOC_IRQ_ACK_REG + 0x100*core), (0x3FF));


 QLAFX00_SET_HBA_SOC_REG(ha, SOC_FABRIC_CONTROL_REG, (0x2));
 QLAFX00_SET_HBA_SOC_REG(ha, SOC_FABRIC_CONFIG_REG, (0x3));


 QLAFX00_SET_HBA_SOC_REG(ha, SOC_FABRIC_RST_CONTROL_REG, (0x0));


 QLAFX00_SET_HBA_SOC_REG(ha, SOC_SW_RST_CONTROL_REG_CORE0, (0xF00));

 spin_unlock_irqrestore(&ha->hardware_lock, flags);


 for (cnt = 10; cnt; cnt--) {
  msleep(1000);
  barrier();
 }
}

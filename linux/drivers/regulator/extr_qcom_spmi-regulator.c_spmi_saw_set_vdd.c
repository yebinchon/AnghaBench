
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int SAW3_AVS_CTL ;
 int SAW3_AVS_CTL_CLEAR_MASK ;
 int SAW3_AVS_CTL_EN_MASK ;
 int SAW3_AVS_CTL_TGGL_MASK ;
 int SAW3_PMIC_STS ;
 int SAW3_RST ;
 int SAW3_SPM_PMIC_DATA_3 ;
 int SAW3_VCTL ;
 int SAW3_VCTL_CLEAR_MASK ;
 int SAW3_VCTL_DATA_MASK ;
 int cpu_relax () ;
 unsigned long jiffies ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int saw_regmap ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 unsigned long usecs_to_jiffies (int) ;

__attribute__((used)) static void spmi_saw_set_vdd(void *data)
{
 u32 vctl, data3, avs_ctl, pmic_sts;
 bool avs_enabled = 0;
 unsigned long timeout;
 u8 voltage_sel = *(u8 *)data;

 regmap_read(saw_regmap, SAW3_AVS_CTL, &avs_ctl);
 regmap_read(saw_regmap, SAW3_VCTL, &vctl);
 regmap_read(saw_regmap, SAW3_SPM_PMIC_DATA_3, &data3);


 vctl &= ~SAW3_VCTL_CLEAR_MASK;
 vctl |= (u32)voltage_sel;

 data3 &= ~SAW3_VCTL_CLEAR_MASK;
 data3 |= (u32)voltage_sel;


 avs_enabled = SAW3_AVS_CTL_EN_MASK & avs_ctl;
 if (avs_enabled) {
  avs_ctl &= ~SAW3_AVS_CTL_TGGL_MASK;
  regmap_write(saw_regmap, SAW3_AVS_CTL, avs_ctl);
 }

 regmap_write(saw_regmap, SAW3_RST, 1);
 regmap_write(saw_regmap, SAW3_VCTL, vctl);
 regmap_write(saw_regmap, SAW3_SPM_PMIC_DATA_3, data3);

 timeout = jiffies + usecs_to_jiffies(100);
 do {
  regmap_read(saw_regmap, SAW3_PMIC_STS, &pmic_sts);
  pmic_sts &= SAW3_VCTL_DATA_MASK;
  if (pmic_sts == (u32)voltage_sel)
   break;

  cpu_relax();

 } while (time_before(jiffies, timeout));


 if (avs_enabled) {
  pmic_sts &= 0x3f;
  avs_ctl &= ~SAW3_AVS_CTL_CLEAR_MASK;
  avs_ctl |= ((pmic_sts - 4) << 10);
  avs_ctl |= (pmic_sts << 17);
  avs_ctl |= SAW3_AVS_CTL_TGGL_MASK;
  regmap_write(saw_regmap, SAW3_AVS_CTL, avs_ctl);
 }
}

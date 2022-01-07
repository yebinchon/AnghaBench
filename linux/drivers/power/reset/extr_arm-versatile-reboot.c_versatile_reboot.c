
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int INTEGRATOR_CM_CTRL_RESET ;
 int INTEGRATOR_HDR_CTRL_OFFSET ;
 int INTEGRATOR_HDR_LOCK_OFFSET ;

 int NOTIFY_DONE ;





 int VERSATILE_LOCK_VAL ;

 int VERSATILE_SYS_LOCK_OFFSET ;
 int VERSATILE_SYS_RESETCTL_OFFSET ;
 int dsb () ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int syscon_regmap ;
 int versatile_reboot_type ;

__attribute__((used)) static int versatile_reboot(struct notifier_block *this, unsigned long mode,
       void *cmd)
{


 switch (versatile_reboot_type) {
 case 134:
  regmap_write(syscon_regmap, INTEGRATOR_HDR_LOCK_OFFSET,
        VERSATILE_LOCK_VAL);
  regmap_update_bits(syscon_regmap,
       INTEGRATOR_HDR_CTRL_OFFSET,
       INTEGRATOR_CM_CTRL_RESET,
       INTEGRATOR_CM_CTRL_RESET);
  break;
 case 128:
  regmap_write(syscon_regmap, VERSATILE_SYS_LOCK_OFFSET,
        VERSATILE_LOCK_VAL);
  regmap_update_bits(syscon_regmap,
       VERSATILE_SYS_RESETCTL_OFFSET,
       0x0107,
       0x0105);
  regmap_write(syscon_regmap, VERSATILE_SYS_LOCK_OFFSET,
        0);
  break;
 case 133:
  regmap_write(syscon_regmap, VERSATILE_SYS_LOCK_OFFSET,
        VERSATILE_LOCK_VAL);
  regmap_write(syscon_regmap,
        VERSATILE_SYS_RESETCTL_OFFSET, 0x0008);
  break;
 case 132:
  regmap_write(syscon_regmap, VERSATILE_SYS_LOCK_OFFSET,
        VERSATILE_LOCK_VAL);
  regmap_write(syscon_regmap,
        VERSATILE_SYS_RESETCTL_OFFSET, 0x0100);
  break;
 case 131:
 case 130:
  regmap_write(syscon_regmap, VERSATILE_SYS_LOCK_OFFSET,
        VERSATILE_LOCK_VAL);
  regmap_write(syscon_regmap, VERSATILE_SYS_RESETCTL_OFFSET,
        0x0000);
  regmap_write(syscon_regmap, VERSATILE_SYS_RESETCTL_OFFSET,
        0x0004);
  break;
 case 129:
  regmap_write(syscon_regmap, VERSATILE_SYS_LOCK_OFFSET,
        VERSATILE_LOCK_VAL);
  regmap_write(syscon_regmap, VERSATILE_SYS_RESETCTL_OFFSET,
        0x00f0);
  regmap_write(syscon_regmap, VERSATILE_SYS_RESETCTL_OFFSET,
        0x00f4);
  break;
 }
 dsb();

 return NOTIFY_DONE;
}

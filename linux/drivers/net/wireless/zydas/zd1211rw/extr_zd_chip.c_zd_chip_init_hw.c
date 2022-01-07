
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zd_chip {int mutex; int rf; } ;


 int CR_AFTER_PNP ;
 int CR_CWMIN_CWMAX ;
 int CR_GPI_EN ;
 int CWIN_SIZE ;
 int dev_dbg_f (int ,char*) ;
 int disable_hwint (struct zd_chip*) ;
 int dump_fw_registers (struct zd_chip*) ;
 int hw_init (struct zd_chip*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int print_fw_version (struct zd_chip*) ;
 int print_id (struct zd_chip*) ;
 int read_cal_int_tables (struct zd_chip*) ;
 int read_fw_regs_offset (struct zd_chip*) ;
 int read_pod (struct zd_chip*,int *) ;
 int set_mandatory_rates (struct zd_chip*,int) ;
 int test_init (struct zd_chip*) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_iowrite32_locked (struct zd_chip*,int,int ) ;
 int zd_rf_init_hw (int *,int ) ;

int zd_chip_init_hw(struct zd_chip *chip)
{
 int r;
 u8 rf_type;

 dev_dbg_f(zd_chip_dev(chip), "\n");

 mutex_lock(&chip->mutex);






 r = zd_iowrite32_locked(chip, 1, CR_AFTER_PNP);
 if (r)
  goto out;

 r = read_fw_regs_offset(chip);
 if (r)
  goto out;



 r = zd_iowrite32_locked(chip, 0, CR_GPI_EN);
 if (r)
  goto out;
 r = zd_iowrite32_locked(chip, CWIN_SIZE, CR_CWMIN_CWMAX);
 if (r)
  goto out;




 r = set_mandatory_rates(chip, 1);
 if (r)
  goto out;


 r = disable_hwint(chip);
 if (r)
  goto out;
 r = read_pod(chip, &rf_type);
 if (r)
  goto out;
 r = hw_init(chip);
 if (r)
  goto out;
 r = zd_rf_init_hw(&chip->rf, rf_type);
 if (r)
  goto out;

 r = print_fw_version(chip);
 if (r)
  goto out;
 r = read_cal_int_tables(chip);
 if (r)
  goto out;

 print_id(chip);
out:
 mutex_unlock(&chip->mutex);
 return r;
}

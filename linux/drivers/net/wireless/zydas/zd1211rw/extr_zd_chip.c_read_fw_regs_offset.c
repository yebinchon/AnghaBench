
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zd_chip {scalar_t__ fw_regs_base; int mutex; } ;


 int FWRAW_REGS_ADDR ;
 int ZD_ASSERT (int ) ;
 int dev_dbg_f (int ,char*,int ) ;
 int mutex_is_locked (int *) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_ioread16_locked (struct zd_chip*,int *,int ) ;

__attribute__((used)) static int read_fw_regs_offset(struct zd_chip *chip)
{
 int r;

 ZD_ASSERT(mutex_is_locked(&chip->mutex));
 r = zd_ioread16_locked(chip, (u16*)&chip->fw_regs_base,
                 FWRAW_REGS_ADDR);
 if (r)
  return r;
 dev_dbg_f(zd_chip_dev(chip), "fw_regs_base: %#06hx\n",
    (u16)chip->fw_regs_base);

 return 0;
}

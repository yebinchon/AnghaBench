
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct zd_chip {size_t* pwr_int_values; } ;


 size_t ARRAY_SIZE (int *) ;
 int RF_RV_BITS ;
 int UW2453_REGWRITE (int,int ) ;
 int dev_dbg_f (int ,char*,size_t,int) ;
 int * uw2453_txgain ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_rfwrite_locked (struct zd_chip*,int ,int ) ;

__attribute__((used)) static int uw2453_set_tx_gain_level(struct zd_chip *chip, int channel)
{
 u8 int_value = chip->pwr_int_values[channel - 1];

 if (int_value >= ARRAY_SIZE(uw2453_txgain)) {
  dev_dbg_f(zd_chip_dev(chip), "can't configure TX gain for "
     "int value %x on channel %d\n", int_value, channel);
  return 0;
 }

 return zd_rfwrite_locked(chip,
  UW2453_REGWRITE(7, uw2453_txgain[int_value]), RF_RV_BITS);
}

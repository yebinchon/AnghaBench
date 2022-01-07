
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fusb302_chip {int toggling_mode; } ;


 int FUSB_REG_STATUS1A ;

 int FUSB_REG_STATUS1A_TOGSS_MASK ;
 int FUSB_REG_STATUS1A_TOGSS_POS ;




 int fusb302_handle_togdone_snk (struct fusb302_chip*,int) ;
 int fusb302_handle_togdone_src (struct fusb302_chip*,int) ;
 int fusb302_i2c_read (struct fusb302_chip*,int ,int*) ;
 int fusb302_log (struct fusb302_chip*,char*,...) ;
 int fusb302_set_toggling (struct fusb302_chip*,int ) ;

__attribute__((used)) static int fusb302_handle_togdone(struct fusb302_chip *chip)
{
 int ret = 0;
 u8 status1a;
 u8 togdone_result;

 ret = fusb302_i2c_read(chip, FUSB_REG_STATUS1A, &status1a);
 if (ret < 0)
  return ret;
 togdone_result = (status1a >> FUSB_REG_STATUS1A_TOGSS_POS) &
    FUSB_REG_STATUS1A_TOGSS_MASK;
 switch (togdone_result) {
 case 131:
 case 130:
  return fusb302_handle_togdone_snk(chip, togdone_result);
 case 129:
 case 128:
  return fusb302_handle_togdone_src(chip, togdone_result);
 case 132:

  fusb302_log(chip, "AudioAccessory not supported");
  fusb302_set_toggling(chip, chip->toggling_mode);
  break;
 default:
  fusb302_log(chip, "TOGDONE with an invalid state: %d",
       togdone_result);
  fusb302_set_toggling(chip, chip->toggling_mode);
  break;
 }
 return ret;
}

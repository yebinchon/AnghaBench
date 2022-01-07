
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fusb302_chip {int dummy; } ;


 int FUSB_REG_CONTROL1 ;
 int FUSB_REG_CONTROL1_RX_FLUSH ;
 int fusb302_i2c_set_bits (struct fusb302_chip*,int ,int ) ;

__attribute__((used)) static int fusb302_pd_rx_flush(struct fusb302_chip *chip)
{
 return fusb302_i2c_set_bits(chip, FUSB_REG_CONTROL1,
        FUSB_REG_CONTROL1_RX_FLUSH);
}

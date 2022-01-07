
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_i2c_bus {int own; int clock; scalar_t__ i2c_control_regs; } ;


 int I2C_PCF_ES1 ;
 int I2C_PCF_IDLE ;
 int I2C_PCF_PIN ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void reset_one_i2c(struct bbc_i2c_bus *bp)
{
 writeb(I2C_PCF_PIN, bp->i2c_control_regs + 0x0);
 writeb(bp->own, bp->i2c_control_regs + 0x1);
 writeb(I2C_PCF_PIN | I2C_PCF_ES1, bp->i2c_control_regs + 0x0);
 writeb(bp->clock, bp->i2c_control_regs + 0x1);
 writeb(I2C_PCF_IDLE, bp->i2c_control_regs + 0x0);
}

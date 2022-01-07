
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq2415x_device {int * timer_error; } ;


 int BQ2415X_REG_CONTROL ;
 int BQ2415X_REG_CURRENT ;
 int BQ2415X_REG_STATUS ;
 int BQ2415X_REG_VOLTAGE ;
 int BQ2415X_RESET_CONTROL ;
 int BQ2415X_RESET_CURRENT ;
 int BQ2415X_RESET_STATUS ;
 int BQ2415X_RESET_VOLTAGE ;
 int bq2415x_i2c_write (struct bq2415x_device*,int ,int ) ;

__attribute__((used)) static void bq2415x_reset_chip(struct bq2415x_device *bq)
{
 bq2415x_i2c_write(bq, BQ2415X_REG_CURRENT, BQ2415X_RESET_CURRENT);
 bq2415x_i2c_write(bq, BQ2415X_REG_VOLTAGE, BQ2415X_RESET_VOLTAGE);
 bq2415x_i2c_write(bq, BQ2415X_REG_CONTROL, BQ2415X_RESET_CONTROL);
 bq2415x_i2c_write(bq, BQ2415X_REG_STATUS, BQ2415X_RESET_STATUS);
 bq->timer_error = ((void*)0);
}

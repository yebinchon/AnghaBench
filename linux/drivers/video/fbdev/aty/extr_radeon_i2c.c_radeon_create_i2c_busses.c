
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeonfb_info {TYPE_2__* i2c; } ;
struct TYPE_3__ {int class; } ;
struct TYPE_4__ {int ddc_reg; struct radeonfb_info* rinfo; TYPE_1__ adapter; } ;


 int GPIO_CRT2_DDC ;
 int GPIO_DVI_DDC ;
 int GPIO_MONID ;
 int GPIO_VGA_DDC ;
 int I2C_CLASS_HWMON ;
 int radeon_setup_i2c_bus (TYPE_2__*,char*) ;

void radeon_create_i2c_busses(struct radeonfb_info *rinfo)
{
 rinfo->i2c[0].rinfo = rinfo;
 rinfo->i2c[0].ddc_reg = GPIO_MONID;

 rinfo->i2c[0].adapter.class = I2C_CLASS_HWMON;

 radeon_setup_i2c_bus(&rinfo->i2c[0], "monid");

 rinfo->i2c[1].rinfo = rinfo;
 rinfo->i2c[1].ddc_reg = GPIO_DVI_DDC;
 radeon_setup_i2c_bus(&rinfo->i2c[1], "dvi");

 rinfo->i2c[2].rinfo = rinfo;
 rinfo->i2c[2].ddc_reg = GPIO_VGA_DDC;
 radeon_setup_i2c_bus(&rinfo->i2c[2], "vga");

 rinfo->i2c[3].rinfo = rinfo;
 rinfo->i2c[3].ddc_reg = GPIO_CRT2_DDC;
 radeon_setup_i2c_bus(&rinfo->i2c[3], "crt2");
}

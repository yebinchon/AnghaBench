
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mx3fb_info {struct mx3fb_data* mx3fb; } ;
struct mx3fb_data {int dummy; } ;


 int SDC_COM_BG_EN ;
 int SDC_COM_CONF ;
 int mx3fb_read_reg (struct mx3fb_data*,int ) ;
 int mx3fb_write_reg (struct mx3fb_data*,int,int ) ;

__attribute__((used)) static uint32_t sdc_fb_uninit(struct mx3fb_info *fbi)
{
 struct mx3fb_data *mx3fb = fbi->mx3fb;
 uint32_t reg;

 reg = mx3fb_read_reg(mx3fb, SDC_COM_CONF);

 mx3fb_write_reg(mx3fb, reg & ~SDC_COM_BG_EN, SDC_COM_CONF);

 return reg & SDC_COM_BG_EN;
}

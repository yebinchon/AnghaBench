
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct io_register {int dummy; } ;
struct TYPE_4__ {int reg_num; struct io_register* reg; } ;
struct TYPE_5__ {int reg_num; struct io_register* reg; } ;
struct TYPE_6__ {TYPE_1__ iga2_fetch_count_reg; TYPE_2__ iga1_fetch_count_reg; } ;



 int IGA1_FETCH_COUNT_FORMULA (int,int) ;

 int IGA2_FETCH_COUNT_FORMULA (int,int) ;
 int VIACR ;
 int VIASR ;
 TYPE_3__ fetch_count_reg ;
 int viafb_load_reg (int,int,struct io_register*,int ) ;

void viafb_load_fetch_count_reg(int h_addr, int bpp_byte, int set_iga)
{
 int reg_value;
 int viafb_load_reg_num;
 struct io_register *reg = ((void*)0);

 switch (set_iga) {
 case 129:
  reg_value = IGA1_FETCH_COUNT_FORMULA(h_addr, bpp_byte);
  viafb_load_reg_num = fetch_count_reg.
   iga1_fetch_count_reg.reg_num;
  reg = fetch_count_reg.iga1_fetch_count_reg.reg;
  viafb_load_reg(reg_value, viafb_load_reg_num, reg, VIASR);
  break;
 case 128:
  reg_value = IGA2_FETCH_COUNT_FORMULA(h_addr, bpp_byte);
  viafb_load_reg_num = fetch_count_reg.
   iga2_fetch_count_reg.reg_num;
  reg = fetch_count_reg.iga2_fetch_count_reg.reg;
  viafb_load_reg(reg_value, viafb_load_reg_num, reg, VIACR);
  break;
 }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dummy; } ;


 int BIT (int) ;
 int TB_CFG_SWITCH ;
 int pcie2cio_write (int ,int ,int ,int,int ) ;
 int tb_priv (struct tb*) ;

__attribute__((used)) static int icm_tr_cio_reset(struct tb *tb)
{
 return pcie2cio_write(tb_priv(tb), TB_CFG_SWITCH, 0, 0x777, BIT(1));
}

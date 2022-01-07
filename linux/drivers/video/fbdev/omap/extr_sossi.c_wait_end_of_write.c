
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOSSI_INIT2_REG ;
 int sossi_read_reg (int ) ;

__attribute__((used)) static void wait_end_of_write(void)
{

 while (!(sossi_read_reg(SOSSI_INIT2_REG) & (1 << 3)));
}

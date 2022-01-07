
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOSSI_INIT1_REG ;
 int SOSSI_INIT2_REG ;
 int sossi_set_bits (int ,int) ;

__attribute__((used)) static void sossi_stop_transfer(void)
{

 sossi_set_bits(SOSSI_INIT2_REG, 1 << 4);

 sossi_set_bits(SOSSI_INIT1_REG, 1 << 30);
}

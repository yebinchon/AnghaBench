
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_reg {int mask; int value; int index; int port; } ;


 int via_write_reg_mask (int ,int ,int ,int ) ;

void viafb_write_regx(struct io_reg RegTable[], int ItemNum)
{
 int i;



 for (i = 0; i < ItemNum; i++)
  via_write_reg_mask(RegTable[i].port, RegTable[i].index,
   RegTable[i].value, RegTable[i].mask);
}

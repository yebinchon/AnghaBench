
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* de_init ) (TYPE_1__*) ;} ;
struct sm750_dev {TYPE_1__ accel; } ;


 int DE_STATE1 ;
 int DE_STATE1_DE_ABORT ;
 scalar_t__ SM750LE ;
 int SYSTEM_CTRL ;
 int SYSTEM_CTRL_DE_ABORT ;
 int peek32 (int ) ;
 int poke32 (int ,int ) ;
 int sm750_enable_2d_engine (int) ;
 scalar_t__ sm750_get_chip_type () ;
 int stub1 (TYPE_1__*) ;

void hw_sm750_initAccel(struct sm750_dev *sm750_dev)
{
 u32 reg;

 sm750_enable_2d_engine(1);

 if (sm750_get_chip_type() == SM750LE) {
  reg = peek32(DE_STATE1);
  reg |= DE_STATE1_DE_ABORT;
  poke32(DE_STATE1, reg);

  reg = peek32(DE_STATE1);
  reg &= ~DE_STATE1_DE_ABORT;
  poke32(DE_STATE1, reg);

 } else {

  reg = peek32(SYSTEM_CTRL);
  reg |= SYSTEM_CTRL_DE_ABORT;
  poke32(SYSTEM_CTRL, reg);

  reg = peek32(SYSTEM_CTRL);
  reg &= ~SYSTEM_CTRL_DE_ABORT;
  poke32(SYSTEM_CTRL, reg);
 }


 sm750_dev->accel.de_init(&sm750_dev->accel);
}

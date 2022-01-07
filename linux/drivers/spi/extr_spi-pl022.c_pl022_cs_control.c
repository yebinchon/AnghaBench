
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pl022 {TYPE_2__* cur_chip; int cur_cs; TYPE_1__* vendor; } ;
struct TYPE_4__ {int (* cs_control ) (int ) ;} ;
struct TYPE_3__ {scalar_t__ internal_cs_ctrl; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 int internal_cs_control (struct pl022*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void pl022_cs_control(struct pl022 *pl022, u32 command)
{
 if (pl022->vendor->internal_cs_ctrl)
  internal_cs_control(pl022, command);
 else if (gpio_is_valid(pl022->cur_cs))
  gpio_set_value(pl022->cur_cs, command);
 else
  pl022->cur_chip->cs_control(command);
}

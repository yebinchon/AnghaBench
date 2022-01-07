
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ second_fan; } ;


 scalar_t__ ec_read (int ,int*) ;
 scalar_t__ ec_write (int ,int) ;
 int fan_select_offset ;
 TYPE_1__ tp_features ;

__attribute__((used)) static bool fan_select_fan1(void)
{
 if (tp_features.second_fan) {
  u8 val;

  if (ec_read(fan_select_offset, &val) < 0)
   return 0;
  val &= 0xFEU;
  if (ec_write(fan_select_offset, val) < 0)
   return 0;
 }
 return 1;
}
